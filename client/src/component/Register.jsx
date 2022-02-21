import React from 'react';
import { useForm } from 'react-hook-form';

export default function Register() {

    

  const { register, handleSubmit, formState: { errors } } = useForm();
  const onSubmit = data => console.log(data);
  console.log(errors);
  
  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      <input 
        type="text" 
        placeholder="name" 
        {...register("name", {required: true, max: 10, min: 3, maxLength: 10})} />
      <input 
        type="text" placeholder="Last name" {...register("Last name", {required: true, maxLength: 100})} />
      <input 
        type="text" 
        placeholder="Email" 
        {...register("Email", {required: true, pattern: /^\S+@\S+$/i})} />
      <input 
        type="password" 
        placeholder="password" 
        {...register("password", {required: true, max: 12, min: 6, maxLength: 12})} />

      <button type='submit'>Registrarse</button>
    </form>
  );
}