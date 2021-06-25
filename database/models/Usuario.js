module.exports = (sequelize, DataTypes) => {


    let alias = 'Usuario'
    
    let cols = {
        ID: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
            unsigned: true
        },
        username: {
            type: DataTypes.STRING
        },
        apellido: {
            type: DataTypes.STRING
        },
        nombre: {
            type: DataTypes.STRING
        },
        nacimiento: {
            type: DataTypes.DATE
        },
        email: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        contraseña: {
            type: DataTypes.STRING
        },
        seguidores: {
            type: DataTypes.INTEGER,
            unsigned: true,
            defaultValue: 0
        },
        cant_productos: {
            type: DataTypes.INTEGER,
            unsigned: true,
            defaultValue: 0
        },
        likes: {
            type: DataTypes.INTEGER,
            unsigned: true,
            defaultValue: 0
        },
        foto_perfil: {
            type: DataTypes.STRING,
            allowNull: false,
            defaultValue: "undefined-1623092790999.png"
        }
       
       
    }
    
    let config = {
        tableName: 'usuarios',
        timestamps: true,
        underscored:true
       
    }
     
    
    const Usuarios = sequelize.define(alias, cols, config)
    
        
        Usuarios.associate = function(models){
        Usuarios.hasMany(models.Comentarios, {
            as: "comentarioss",
            foreignKey: "id_autor"
        })
        Usuarios.hasMany(models.Products, {
            as: "productos",
            foreignKey: "creado_por"
        })
    }
    
    
    
    return Usuarios
    
    }