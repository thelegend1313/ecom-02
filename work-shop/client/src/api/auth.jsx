import axios from 'axios'
import useEcomStore from '../store/ecom-store'
export const currentUser = async(token) => {
    return await axios.post('http://localhost:5001/api/current-user',{},{
        headers:{
            Authorization: `Bearer ${token}`
        }
    })
}
//test commit
    export const currentAdmin = async(token) => {
        return await axios.post('http://localhost:5001/api/current-admin',{},{
        headers:{
            Authorization: `Bearer ${token}`
        }
    })

    }