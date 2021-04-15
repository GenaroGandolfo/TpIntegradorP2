const motos = require('../data/motos.json'); 
module.exports = {
    index: (req,res) =>{
        return res.render('index', {title:'Página de incio', motos});
    },
    detail : (req,res) =>{
        //return res.send(req.params.id);
        let id = req.params.id;
        for(let i = 0; i < motos.length; i++){
            if(motos[i].id == id){
                return res.render('detail', {title:'Detalle de la moto',moto : motos[i]});
            }
        }
    }
}