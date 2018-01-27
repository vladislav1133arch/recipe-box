import axios from 'axios'

import Auth from '../store/auth'

export function get(url) {

    return axios({
        url: url,
        headers: {
            'Authorization': `Bearer ${Auth.state.api_token}`
        }
    })
}
export function post(url, data) {

    return axios({
        method: 'POST',
        url: url,
        data: data,

        headers: {
            'Authorization': `Bearer ${Auth.state.api_token}`
        }
    })
}

export function del(url, data) {

    return axios({
        method: 'DELETE',
        url: url,
        data: data,

        headers: {
            'Authorization': `Bearer ${Auth.state.api_token}`
        }
    })
}