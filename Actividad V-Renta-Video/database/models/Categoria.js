module.exports = (sequelize, dataTypes) => {
    let alias = "Categoria"
    let cols = {
        id:{
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        nombre:{
            type: dataTypes.STRING
        }
    }
    const config = {
        tableName: "categorias",
        timestamps: false
    }
    const Categoria = sequelize.define(alias, cols, config);

    Categoria.associate = function(models) {
        Categoria.hasMany(models.Pelicula, {
            as: 'peliculas',
            foreignKey: 'categoria_id'
        })
    }

    return Categoria
}