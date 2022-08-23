import logo from "./logo.svg";
import "./App.css";

function App() {
  return (
    <div className="App">
      <body>
        <h1> {process.env.REACT_APP_APP_NAME}</h1>
      </body>
    </div>
  );
}

export default App;
