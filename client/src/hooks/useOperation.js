import { useCallback,useContext } from "react";
import Context from '../context/Usercontext';
import operationService from '../services/operation'

export default function useOperation(){
    const {jwt} = useContext(Context)

    const operation = useCallback(({amount,option,category,comment}) =>{
        console.log(amount,option,category,comment)
        operationService(amount,option,category,comment)
       console.log('el precio :',amount)
    },[])
    return {
        operation
    }
}