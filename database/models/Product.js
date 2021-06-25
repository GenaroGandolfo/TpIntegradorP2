module.exports = (sequelize, DataTypes) => {

    let alias = 'Product';

    let cols = {
        id_producto: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
            
        },
        nombre: {
            type: DataTypes.STRING,

        },
        createdAt: {
            type: DataTypes.DATE
        },
        updatedAt:{
            type: DataTypes.date
        },
        marca: {
            type: DataTypes.STRING,
            allowNull: true,
            defaultValue: null 
        },
        modelo: {
            type: DataTypes.STRING
        },
        precio: {
            type: DataTypes.INTEGER,
            unsigned: true
        },
        descripcion: {
            type: DataTypes.STRING,
            allowNull: true
        },
        creado_por: {
            type: DataTypes.INTEGER,
            unsigned: true
        },
        foto_product: {
            type: DataTypes.STRING,
            allowNull: true,
            defaultValue: null    
        },
        cantidad_de_comentarios: {
            type: DataTypes.INTEGER,
            allowNull: false,
            defaultValue: 0
        }
    }

    let config = {
        timestamps: true,
        underscored: true
    }

    const Product = sequelize.define(alias, cols, config)

    
    Products.associate = function(models){
        Products.belongsTo(models.Usuarios, {
            as: "creador",
            foreignKey: "creado_por"
        }),
        Products.hasMany(models.Comentarios, {
            as: 'comentarios',
            foreignKey: 'id_producto_comentado'
        })
    }

return Product

}