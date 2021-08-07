import React,{useState} from "react"
import Chat from './componants/Chat';

const App = () => {
	const [name] = useState("asd")
	return (
		<div>
		<Chat name={name}/>
		</div>
	);
};

export default App;
