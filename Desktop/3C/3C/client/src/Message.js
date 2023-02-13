import * as React from 'react';
export default function Message(props){
   
   let [currentMessage, setCurrentMessage] = React.useState("");
   let [submitMessage, setSubmitMessage] = React.useState("");
   let [messages, setMessages] = React.useState([]);

    function addMessage(message){
       let user = props.user;
       let getMessages = props.messages;
       getMessages = [
        ...getMessages,
        {user: user, message: message}
       ]
       setMessages(getMessages);
    }    

    const submitData = async (data) => {
      console.log(data)
      const res = await fetch("http://localhost:3001/test", {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ title: 'React Hooks POST Request Example' })
      })
      console.log(res)
    }

    function renderMessages(){
        let renderMessages = [];
        messages.forEach(renderMessage => {
            renderMessages.push(
               <li>{renderMessage.user} : {renderMessage.message} </li>
            )
        });
        return (
         <ul>
            {renderMessages}
         </ul>
        )
    }

   async function getMessage(){
     let message = await fetch("http://localhost:3001/tester").then(res => res.json());
     console.log(message);
    }

    return (<div>
      <input type = "text" onChange = {(event) => setCurrentMessage(event.target.value)} />
      &nbsp;
      <button onClick = {async () => {
         
         
       setSubmitMessage(currentMessage); addMessage(submitMessage);
      
      await submitData({data: submitMessage});
      await getMessage(); 
     
         }}> Send </button>
      {renderMessages()}
    </div>);

}