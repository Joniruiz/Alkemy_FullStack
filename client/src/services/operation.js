const ENDPOINT = 'http://localhost:3001/api'

export default function operation ({ amount,option,category,concept }) {

    return fetch(`${ENDPOINT}/create`, {
      
      method: 'POST',
      headers: {
        "Content-Type": "application/json"
      },
      
      body: JSON.stringify({amount,option,category,concept})
    }).then(res => {
      if (!res.ok) throw new Error('Response is NOT ok')
      return res.json()
    
    }).then(res => {
     console.log(res)     
      return res
    })
  }