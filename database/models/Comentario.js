module.exports = (sequelize, DataTypes) => {

    let alias = 'Comentario'

    let cols = {
        comentario_id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        autor_comentario: {
            type: DataTypes.INTEGER,
            unsigned: true
        },
        comentario: {
            type: DataTypes.STRING
        },
        createdAt: {
            type: DataTypes.DATE
        },
       
    }

    let config = {
        tableName: 'comentarios',
        timestamps: true,
        underscored: true, 
    }

    const Comentarios = sequelize.define(alias, cols, config)

    Comentarios.associate = function(models){
        Comentarios.belongsTo(models.Usuarios, {
            as: "autor",
            foreignKey: "id_autor"
        })
        Comentarios.belongsTo(models.Products, {
            as: 'producto',
            foreignKey: 'id_producto_comentado'
        })
    }

    return Comentarios

}