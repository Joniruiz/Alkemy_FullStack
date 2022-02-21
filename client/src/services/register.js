const ENDPOINT = 'http://localhost:3001/api'

export default function register ({ name,lastName,email, password }) {

    return fetch(`${ENDPOINT}/register`, {
      method: 'POST',
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({name,lastName,email, password})
    }).then(res => {
      if (!res.ok) throw new Error('Response is NOT ok')
      return res.json()
    
    }).then(res => {
     console.log(res)     
      return res
    })
  }