const db = require ("../database/models")

module.exports={

    index: (req,res) => {
        db.Product.findAll()
        .then(respuesta=> {
            //return res.send(respuesta)
            return res.render ('products', {respuesta})

        })
    }
}