
import './App.css';
import Message from './Message';
import * as React from 'react';

function App() {
  let data = [];
  let user = "C";
  return (
   <Message messages={data} user={user} />
  );
}

export default App;
