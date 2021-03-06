const { Router } = require('express')
const {createProject, getProject,getIDProject, deleteProject, putProject, patchProject} = require('../controllers/project')
const {authorization} = require('../middleware/auth')
const uploadImage = require('../middleware/multer')

const router = Router()

router.post('/', authorization,uploadImage,createProject)
router.get('/', authorization ,getProject)
router.get('/:id', authorization ,getIDProject)
router.put('/:id', authorization,uploadImage,putProject)
router.delete('/:id',authorization ,deleteProject)
router.patch('/:id', authorization ,uploadImage,patchProject)

module.exports= router