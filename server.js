var express = require("express");
var bodyparser = require("body-parser");
var cookie = require("cookie-parser");
var multer = require("multer");
var mysql = require("mysql");
var app = express();
var fs=require("fs");
app.use(express.static("public"));
app.use(bodyparser.json());
app.use(express.json());
app.use(express.urlencoded());


app.listen(8081, function () {
    console.log("Server Running at http://localhost:8081");
});

app.get("/", function (req, res) {

    let header = fs.readFileSync("header.html");
    let footer = fs.readFileSync("footer.html");

    fs.readFile("index.html", (err,data)=>{
        res.send(header.toString() + data.toString() + footer.toString());
    });
});

app.get("/index", function (req, res) {

    var header=fs.readFileSync("header.html");
    var footer=fs.readFileSync("footer.html");
    
    fs.readFile("index.html",function(err,data){
        res.send(header.toString()+data.toString()+footer.toString());
    });
});

app.get("/create", function (req, res) {

    var header=fs.readFileSync("header.html");
    var footer=fs.readFileSync("footer.html");
    
    fs.readFile("create.html",function(err,data){
        res.send(header.toString()+data.toString()+footer.toString());
    });
});




app.post("/save", function (req, res) {
    let body = req.body;
    let id=body.data.id;
    let name = body.data.name;
    let email = body.data.email;
    let mobile_no = body.data.mobile_no;
    let city = body.data.city;

    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "nodecrud"
    });
    con.connect(function (err) {

        console.log("error");

    });
    var query;
    if (id==0){
        query ="insert into users(name,email,mobile_no,city) values('"+name+"','"+email+"','"+mobile_no+"','"+city+"')";
    }
    else{
        query="update users SET name='"+name+"',email='"+email+"',mobile_no='"+mobile_no+"',city='"+city+"' WHERE id = " + id;
    }

    con.query(query, function (err, result) {
        console.log("inserted");
        res.end("success");
    });
    
});

app.post("/delete", function (req, res) {
    let body = req.body;
    let id=body.data.id;
   

    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "nodecrud"
    });
    con.connect(function (err) {

        console.log(err);

    });
    var query="delete from users WHERE id="+id;

    con.query(query, function (err, result) {
        console.log("deleted Successfully");
        res.send({data:{status:"success"}});
    }); 
});


app.post("/get", function (req, res) {
    let body = req.body;
    let id=body.data.id;
    

    var con = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "nodecrud"
    });
    con.connect(function (err) {

        console.log("error");

    });
    var query;
    if (id==0){
        query ="select * from users";
    }
    else{
        query="select * from users  WHERE id = " + id;
    }

    con.query(query, function (err, result) {
        console.log("reading");
        res.send({data:result});
    });
    
});

