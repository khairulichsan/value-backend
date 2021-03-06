const { request, response } = require('express')
const db = require('../helpers/db')

module.exports ={
    
    postRecruiterModel : (setData) => {
        return new Promise((resolve, reject)=>{
            db.query('INSERT INTO recruiter SET ? ',setData,(error, result)=>{
                if(!error){
                    const newResult ={
                   id: result.insertId,
                   ...setData
                   }
                   delete newResult.password
                   resolve(newResult)
                }else{
                    reject(new Error(error))
                    console.log(error);
                }
            })
        })
       
    },
    checkRecruiterModel: (email) => {
        return new Promise((resolve, reject)=>{
            db.query('SELECT id_recruiter, email, password, name,role, company,no_hp FROM recruiter WHERE email = ?',email,(error, result) =>{
                if(!error){
                    resolve(result)
                }else{
                    reject(new Error(error))
                }
            })
        })
    },
    checkRecEmailModel: (email) => {
        return new Promise((resolve, reject) => {
          db.query('SELECT email FROM recruiter WHERE email = ?', email, (error, result) => {
            if (!error) {
              resolve(result)
            } else {
              reject(new Error(error))
              console.log(error)
            }
          })
        })
      },
    getDataRecruiterModel : (searchKey,searchValue,limit,offset)=>{
        return new Promise((resolve,reject)=>{
            const query =`SELECT * FROM recruiter WHERE ${searchKey} LIKE '%${searchValue}%' LIMIT ${limit} OFFSET ${offset}`
            db.query(query,(err,result,_fields)=>{
                if(!err){
                    resolve(result)
                }else{
                    reject(new Error(err))
                }
        })
        })
    },
    
    selectRecruiterModel : (idRec)=>{
        return new Promise((resolve,reject)=>{
            db.query(`SELECT * FROM recruiter WHERE id_recruiter = ${idRec}`, (err, result, _field)=>{
                if (!err) {
                    resolve(result)
                } else {
                    reject(new Error(err))
                    console.log(`${idRec}`);

                }
        })
        })
    },
    deleteRecruiterIDModel : (idRec)=>{
        return new Promise((resolve,reject)=>{
            db.query(`DELETE FROM recruiter WHERE id_recruiter = ${idRec}`, (err, result, _field)=>{
                if (!err) {
                    resolve(result)
                } else {
                    reject(new Error(err))
                }
        })
        })
    },
    putRecruiterModel : (idRec, data)=>{
        return new Promise((resolve,reject)=>{
            db.query(`UPDATE recruiter SET ${data} WHERE id_recruiter = ${idRec}`, (err, result, _fields)=>{
                if (!err) {
                    resolve(result)
                } else {
                    console.log(err);
                    reject(new Error(err))
                }
        })
        })
    },
    pathRecruiterModel : (idRec, data)=>{
        return new Promise((resolve,reject)=>{
            db.query(`UPDATE recruiter SET ${idRec} WHERE id_recruiter = ${data}`, (err, result, _field)=>{
                if (!err) {
                    resolve(result)
                } else {
                    
                    reject(new Error(err))
                }
        })
        })
    }
}