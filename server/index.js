import express from 'express';
import mysql from 'mysql';
import cors from 'cors';
const app = express();
const port = 3001;

const db = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: 'lucaskika123',
  database: 'contadortags'
});

const SQL_CREATE_TABLE_URL_TAGS = `
  CREATE TABLE IF NOT EXISTS url_tags (
    id INT AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    tag_name VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL
  )
`;


async function createUrlTagsTable() {
  return new Promise((resolve, reject) => {
    db.query(SQL_CREATE_TABLE_URL_TAGS, (err, result) => {
      if (err) reject(err);
      else {
        console.log("Tabela 'url_tags' criada ou já existe.");
        resolve();
      }
    });
  });
}

createUrlTagsTable()
  .then(() => {
    app.use(cors());
    app.use(express.json())
  });


app.use(cors());
app.use(express.json());

app.post("/tagshtml", async (req, res) => {
  const { url, tags } = req.body;

  if (!Array.isArray(tags) || tags.length === 0) {
    return res.status(400).json({ error: "O corpo da requisição deve conter um array de tags." });
  }

  const SQL_INSERT_URL_TAGS = "INSERT INTO url_tags (url, tag_name, quantidade) VALUES (?, ?, ?)";
  const urlTagsValues = tags.map((tag) => [url, tag.name, tag.quantidade]);

  try {
    // Inserir a URL e suas tags na tabela "url_tags"
    await Promise.all(urlTagsValues.map((values) => {
      return new Promise((resolve, reject) => {
        db.query(SQL_INSERT_URL_TAGS, values, (err, result) => {
          if (err) {
            console.error("Erro ao inserir tag na tabela url_tags:", err);
            reject(err);
          } else {
            console.log(`Tag "${values[1]}" associada à URL "${url}" inserida com sucesso!`);
            resolve(result);
          }
        });
      });
    }));

    res.json({ message: "Dados recebidos e inseridos com sucesso!" });
  } catch (error) {
    res.status(500).json({ error: "Ocorreu um erro ao inserir as tags no banco de dados." });
  }
});

app.get("/getTagsByUrl", (req, res) => {
  const { url } = req.query;

  if (!url) {
    return res.status(400).json({ error: "A consulta deve conter uma URL." });
  }

  const SQL_SELECT_URL_TAGS = "SELECT tag_name, quantidade FROM url_tags WHERE url = ?";
  db.query(SQL_SELECT_URL_TAGS, [url], (err, results) => {
    if (err) {
      console.error("Erro ao consultar as tags pela URL:", err);
      return res.status(500).json({ error: "Ocorreu um erro ao consultar as tags pela URL." });
    }

    const tags = results.map((row) => ({
      name: row.tag_name,
      quantidade: row.quantidade
    }));

    res.json({ url: url, tags: tags });
  });
});

app.get("/getTags", (req, res) => {
  const SQL_SELECT_TAGS = "SELECT * FROM tags";

  db.query(SQL_SELECT_TAGS, (err, results) => {
    if (err) {
      console.error("Erro ao consultar as tags:", err);
      return res.status(500).json({ error: "Ocorreu um erro ao consultar as tags." });
    }

    res.json(results);
  });
});

app.listen(port, () => {
  console.log(`Servidor rodando: localhost:${port}`);
});
