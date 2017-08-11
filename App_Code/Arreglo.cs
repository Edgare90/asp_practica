using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Arreglo
/// </summary>
public class Arreglo
{
    private ArrayList lista;
    public Arreglo()
    {
        this.lista = new ArrayList();
        this.lista.Add("Chile");
        this.lista.Add("Mexico");
        this.lista.Add("Noruega");
        this.lista.Add("Suecia");
        this.lista.Add("Dinamarca");
    }


    public ArrayList GetLista()
    {
        return this.lista;
    }
}