const { Router } = require('express')
const {createProject, getProject, deleteProject, putProject, patchProject} = require('../controllers/project')
const {authorization} = require('../middleware/auth')
const uploadImage = require('../middleware/multer')

const router = Router()

router.post('/', authorization,uploadImage,createProject)
router.get('/', authorization ,getProject)
router.put('/:id', authorization,putProject)
router.delete('/:id',authorization ,deleteProject)
router.patch('/:id', authorization ,patchProject)

module.exports= router