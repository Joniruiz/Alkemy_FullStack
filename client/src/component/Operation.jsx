import React,{useState,useEffect} from 'react';
import useOperation from '../hooks/useOperation';
import {useLocation } from 'wouter'
import axios from 'axios';

const Operation = () => {

    const [navigate] = useLocation()
    const {operation} = useOperation()
    const [amount,setAmount] = useState('')
    const [option,setOption] = useState('')
    const [category,setCategory] = useState('')
    const [concept,setConcept] =useState('')

    const handleOperation = (e) =>{
        const optionOperation = e.target.value;

        setOption(optionOperation)
    }

    const handleCategory = (e) =>{
        const optionCategory = e.target.value;

        setCategory(optionCategory)
    }

    const enviarDatos = async (e) => {
        e.preventDefault()
        try {
            const op = {amount,option,category,concept,id:1}
            let response = await axios.post(`http://locahost:3001/api/create`,op)
            console.log(response)
        } catch (error) {
            console.log('aca esta el error',error.message)
        }
    }
  return (

  <>
    <form onSubmit={enviarDatos}>
        <label for='amount'>Amount </label>
        <input 
            type="text" 
            name='amount'
            id='amount'
            placeholder='Ingrese el monto' 
            onChange={(e)=> setAmount(e.target.value)}
            value={amount}
            />
        <label for="operation_type">Tipo de operacion</label>
        <select name="operation_type" id="" onClick={handleOperation}>
            <option value="egreso">Egreso</option>
            <option value="ingreso">Ingreso</option>
        </select>
        <label for="category">Categoria</label>
        <select name="category" id="" onClick={handleCategory}>
            <option value="1">Comida</option>
        </select>
        <label for="detail">Detalle de operacion</label>
        <textarea 
            name="detail"
             id="" 
            cols="30" 
            rows="5" 
            placeholder='Ingrese un comentario'
            onChange={(e)=> setConcept(e.target.value)}></textarea>
            
    <button type='submit'>Enviar</button>
    </form>
  </>
  );
};

export default Operation;
