import axios from 'axios'


export const createBranch = async (token, form) => {
    // code body
    return axios.post('http://localhost:5001/api/branch', form, {
        headers: {
            Authorization: `Bearer ${token}`
        }
    })
}

export const listBranch = async () => {
    // code body
    return axios.get('http://localhost:5001/api/branch')
}

export const removeBranch = async (token, id) => {
    // code body
    return axios.delete('http://localhost:5001/api/branch/'+id, {
        headers: {
            Authorization: `Bearer ${token}`
        }
    })
}