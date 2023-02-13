
const express = require("express");
const session = require("express-session");
const PORT = process.env.PORT || 3001;
var cors = require('cors')

const app = express();
app.use(cors())

app.set('trust proxy', 1) 
app.use(session({
    secret: 'keyboard cat',
    resave: false,
    saveUninitialized: true,
    cookie: { secure: true }
  }))
  app.use(express.json())    
  app.get("/api", (req, res) => {
  let session = req.session;  //initialize session variable
  let messages = session.messages; 
  
  console.log(messages);
    res.json({ message: "Hello from server!" });
  });

  app.post("/getdata", (req, res) => {
    console.log(req.data)
    });

    
app.post('/test', (req, res) => {
  console.log(req.body)
  req.session.data = 3;
  res.json({star:"C"});
  // <==== req.body will be a parsed JSON object
})

app.get('/tester', (req, res) => {

var returnObject = {C: req.session.data};
  returnObject.SS = "cuong";
  res.json(returnObject)  // <==== req.body will be a parsed JSON object
})
app.listen(PORT, () => {
  console.log(`Server listening on ${PORT}`);
});