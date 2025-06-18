import { Axios } from "axios";
import { Component } from "react";

export const CreateCatagory = async(token) => {
    return await axios.post('http://localhost:5001/api/category',{},{
        headers:{
            Authorization: `Bearer ${token}`
        }
    })
}
