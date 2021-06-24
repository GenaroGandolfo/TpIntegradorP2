module.exports = (sequelize,DataTypes)=>{


    let alias = 'Productos';
    let cols = {
    
        id_producto: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        imagen: {
            type: DataTypes.STRING
        },
        nombre: {
            type: DataTypes.STRING
        },
        descripcion: {
            type: DataTypes.STRING,
        },
        createdAt: {
            type: DataTypes.DATE,
        },
        userAdded: {
            type: DataTypes.INTEGER,
        },
        updatedAt: {
            type: DataTypes.DATE,
        },
        precio: {
            type: DataTypes.INTEGER,
            unsigned: true
        }
    
    
    }
    let config = {
        tableName: 'productos',
        timestamps: false,
        underscored: false,
    }
    
    const Producto = sequelize.define(alias, cols, config);
    
    return Producto;
    }