const express = require("express");
const app = express();

const cors = require("cors");
const {open} = require("sqlite");

const drive = require("sqlite3");

const path = require("path");

const bodyParser = require("body-parser");
const { request } = require("http");

const dpath = path.join(__dirname,"book.db")


app.use(cors());
app.use(bodyParser.json());

let db=null;
const initialize = async () => {

    try{

        db= await open({filename:dpath,driver:drive.Database});
        app.listen(5000,() => {
            console.log(`server listening on port 5000`)
        })
    }
    catch(e){
        console.log("error");
        process.exit(1)
    }

}


initialize();
app.get("/books", async (request,response) => {

    const dquerry = `select * from book;`

    const res = await db.all(dquerry);

    response.json(res);

});

app.get("/books/:id", async (request, response) => {
  try {
    const { id } = request.params;
    const query = `SELECT * FROM book WHERE id = ?;`;
    const book = await db.get(query, [id]);

    if (book) {
      response.json(book);
    } else {
      response.status(404).json({ error: "Book not found" });
    }
  } catch (error) {
    response.status(500).json({ error: "Server error" });
  }
});
app.get("/user/:id", async (request, response) => {
  try {
    const { id } = request.params;
    const query = `SELECT * FROM user WHERE id = ?;`;
    const user = await db.get(query, [id]);

    if (user) {
      response.json(user);
    } else {
      response.status(404).json({ error: "Book not found" });
    }
  } catch (error) {
    response.status(500).json({ error: "Server error" });
  }
});


app.post("/books-update", async (request, response) => {
  try {
    const { title, author, genre, description, image_url } = request.body;
    const query = `
      INSERT INTO book (title, author, genre, description, image_url)
      VALUES (?, ?, ?, ?, ?);
    `;
    const result = await db.run(query, [title, author, genre, description, image_url]);
    response.status(201).json({ message: "Book added successfully", bookId: result.lastID });
  } catch (error) {
    console.error("Error adding book:", error); 
    response.status(500).json({ error: "Server error" });
  }
});


app.post("/review", (request, response) => {
  const { book_id, user_name, rating, comment } = request.body;
  // console.log(request.body);

  db.run(
    'INSERT INTO review (book_id, user_name, rating, comment) VALUES (?, ?, ?, ?)',
    [book_id, user_name, rating, comment],
    
  );

  

  response.status(201).json({ message: "review added successfully", review_id: this.lastID });

  
});


app.get("/review/:id", async(request,response) =>{

    try{

        const {id} = request.params;

        const querry = `select * from review where id=${id};`;


        const res = await db.get(querry);

        if (res){
            response.json(res);

        }
        else {
            response.status(404).json({ error: "Book not found" });
            }
        } 
        catch (error) {
            response.status(500).json({ error: "Server error" });
        }


    
})

