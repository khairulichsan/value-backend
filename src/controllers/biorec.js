const db = require('../helpers/db')
const {createBioRecModel, getBioRecModel, selectBioRecModel, deleteBioRecIDModel, putBioRecModel, pathBioRecModel} = require('../models/biorec')

module.exports = {
    createBioRec : async (req, res) => {
        try{
        const {id_recruiter,name_company, sector,city,description, instagram, image,linkedin} = req.body
        const setData = {id_recruiter,
            name_company,
            sector,
            city,
            description,
            instagram,
            linkedin,
            image: req.file === undefined ? '' : req.file.filename
        }
            const resultCreate = await createBioRecModel(setData)
            res.status(200).send({
                success: true,
                message:'Product Created',
                data: setData
            })
             } catch (error) {
                 res.status(500).send({
                     success: false,
                     message: 'Bad Request'
                 })
                 
             }
        
    },
    getBioRec : (req, res)=>{
        let {page, limit, search } = req.query
    
        let searchKey = ''
        let searchValue = ''
    
        if(typeof search == 'object'){
            searchKey = Object.keys(search)[0]
            searchValue = Object.value(search)[0]
        }else{
            searchKey = 'name_company'
            searchValue = search||''
        }
        if(!limit){
            limit = 10
        }else{
            limit = parseInt(limit)
        }
        if(!page){
            page = 1
        }else{
            page = parseInt(page)
        }
    
    const offset = (page-1)*limit

    getBioRecModel(searchKey,searchValue,limit,offset, result => {
        if(result.length){
                        res.status(201).send({
                            success:true,
                            message:'List bio Recruiter',
                            data: result
                        })
                    }else{
                        res.send({
                            success: true,
                            message: 'There is no item list'
                        })
                    }
    })
    
   
    },
    deleteBioRec : (req,res)=>{
            const idBioRec = req.params.id
            selectBioRecModel(idBioRec, result =>{
            if (result.length){
                deleteBioRecIDModel(idBioRec, result=>{
                    if (result.affectedRows){
                        res.send({
                            success:true,
                            message:`recruiter bio ${idBioRec} has been deleted`,
                            data: result
                        })
                    }else{
                        res.send({
                            success: false,
                            message: 'Data filed to delete'
                        })
                    }
                })
            }else{
                res.send({
                    success:false,
                    message:'Data not Found'
                })
            }
            })
        },
        putBioRec :(req,res)=>{
                const idBioRec = req.params.id
                const {name_company, sector,city,description, instagram, image,linkedin} =req.body
                if (name_company.trim() && sector.trim() && city.trim() && description.trim() && instagram.trim() && image.trim() && linkedin.trim()){
               putBioRecModel (idBioRec,name_company, sector,instagram,image, city, linkedin,description, result=>{
                    console.log(result);
                            if(result.affectedRows){
                                res.send({
                                    success: true,
                                    message: `Recruiter Bio with id ${idBioRec} has been Update All`,
                                })
                                }else{
                                res.send({
                                    success: false,
                                    message: 'All field must be filled'
                                    })
                                }
                })
            }else{
                res.send({
                    success: false,
                    message: 'All field must be filled'
                        })
                    }
            },
            patchBioRec : (req,res)=>{
                    const idBioRec  = req.params.id
                    const {name_company='', sector='',city='',description='', instagram='', image='',linkedin=''} =req.body
                if (name_company.trim() || sector.trim() || city.trim() || description.trim() || instagram.trim() || image.trim() || linkedin.trim()) {
                    selectBioRecModel(idBioRec, result=>{
                if (result.length){
                        const data = Object.entries(req.body).map(item =>{
                            return parseInt(item[1]) > 0 ? `${item[0]} = ${item[1]}` : `${item[0]}='${item[1]}'`
                        })
                        console.log(data);
                       pathBioRecModel(idBioRec,data,result=>{
                            console.log(result);
                    if (result.affectedRows){
                        res.send({
                            success: true,
                            message: `Recruiter with id ${idBioRec} has been updated`,
                        })
                    }else{
                        res.send({
                            success: false,
                            message: 'filed updated'
                        })
                    }
                        })  
                  } else{
                    res.send({
                        success: false,
                        message: 'Recruiter not found'
                        })
                    }
                })
                    }else{
                    res.send({
                        success: false,
                        message: 'erorr'
                    })
                    }
                }
                
               
}