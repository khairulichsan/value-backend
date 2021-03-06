const { Router } = require('express')
const {createport, getport, getIDport, deleteport, putport, patchport} = require('../controllers/port')
const uploadImage = require('../middleware/multer')
const { authorizationDev, authAll} = require('../middleware/auth')

const router = Router()

router.post('/', authorizationDev,uploadImage,createport)
router.get('/', authAll,getport)
router.get('/:id', authAll,getIDport)
router.put('/:id', authorizationDev,uploadImage,putport)
router.delete('/:id', authorizationDev,deleteport)
router.patch('/:id', authorizationDev,uploadImage,patchport)

module.exports= router