using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Padre
/// </summary>
abstract public class Padre
{
    //atributos
    private string nombre;
    private string correo;

    //constructores y sobrecarga de constructores
    public Padre()
    {
        this.nombre = "Edgare";
        this.correo = "edgar@gmail.com";
    }


    public Padre(string nombre, string correo)
    {
        this.nombre = nombre;
        this.correo = correo;
    }

    //metodos
    public string GetNombre()
    {
        return this.nombre;
    }

    public void SetNombre(string nombre)
    {
        this.nombre = nombre;
    }

    public string GetCorreo()
    {
        return this.correo;
    }
}