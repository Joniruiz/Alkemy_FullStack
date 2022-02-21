import { useState } from "react";
import {button} from '../taildwind/styles'
import {useLocation } from 'wouter'
import useUser from '../hooks/useUser'

export default function App() {


    const [email,setEmail] = useState('')
    const [password,setPassword] = useState('')
    const [navigate] = useLocation()
    const {login} = useUser()
    const {register} = useUser()
    const [formRegister,setFormregister] = useState(false)
    const [name, setName] = useState('')
    const [lastName,setLastName] = useState('')
    

    const handleSubmit = (e) => {
         e.preventDefault();
         login({ email, password })
         navigate('/')
        };

    const handleRegister = (e) =>{
      e.preventDefault();
      register({name,lastName,email,password})
      navigate('/')
    }
    
        
    return(
      <div  className="grid">

        {
          !formRegister ?  
          <>
          <form onSubmit={handleSubmit}>    
            
          
          <input
          placeholder="email"
          onChange={(e) => setEmail(e.target.value)}
          value={email}
        />
                
          <input
            type="password"
            placeholder="password"
            onChange={(e) => setPassword(e.target.value)}
            value={password}
        />
         <button className={button} type="submit">Submit</button>
      </form>
         <button className={button} onClick={() => setFormregister(true)} type="submit">Registro</button>
         </>
      :
      <>
      <form onSubmit={handleRegister}>
      <input
          placeholder="name"
          onChange={(e) => setName(e.target.value)}
          value={name}
        />
      <input
          placeholder="lastName"
          onChange={(e) => setLastName(e.target.value)}
          value={lastName}
        />
        <input
          placeholder="email"
          onChange={(e) => setEmail(e.target.value)}
          value={email}
        />
        <input
            type="password"
            placeholder="password"
            onChange={(e) => setPassword(e.target.value)}
            value={password}
        />

         <button className={button} type="submit">Submit</button>
      </form>
         <button className={button} onClick={() => setFormregister(false)} type="submit">Iniciar session</button>

         </>
        }

      </div>
    )

}