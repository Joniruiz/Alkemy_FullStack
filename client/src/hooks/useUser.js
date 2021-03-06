import {useCallback, useContext} from 'react'
import Context from '../context/Usercontext'
import loginService from '../services/login'
import registerService from '../services/register'


export default function useUser () {
  const { jwt, setJWT} = useContext(Context)

 
  console.log(jwt)
 
  const login = useCallback(({email, password}) => {
   console.log({email, password})
    loginService({email, password})
      .then(token => {
        window.sessionStorage.setItem('jwt', token.token)
        
        setJWT(token);
      
        return token
        
      })
      .catch(err => {
        window.sessionStorage.removeItem('jwt')
        console.error(err)
      })
  }, [setJWT])

  const register = useCallback(({name,lastName,email,password})=>{
    registerService({name,lastName,email,password})
    console.log('aca estoy')
      .then(token => {
        console.log('asadsadasd')
        window.sessionStorage.setItem('jwt', token.token)
        setJWT(token);
        return token
      })
      .catch(err => {
        window.sessionStorage.removeItem('jwt')
        console.error(err)
      })
  }, [setJWT])
  

  const logout = useCallback(() => {
   
    window.sessionStorage.removeItem('jwt')
    setJWT(null);
   
  }, [setJWT])

  return {
   isLogged: Boolean(jwt),
    jwt ,  
    login,
    logout,
    register
   
    }
} 