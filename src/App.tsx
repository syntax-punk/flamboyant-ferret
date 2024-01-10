import { useState } from 'react'
import './App.css'

function App() {
  const [count, setCount] = useState(0)
  return (
    <div className='container'>
        <h1 className='title'>Flamboyant Ferret</h1>
        <img className='ferret' src="/ff.png" alt="flamboyant-ferret" />
        <button className='knapp' onClick={() => setCount((count) => count + 1)}>
          clicks: {count}
        </button>
    </div>
  )
}

export default App
