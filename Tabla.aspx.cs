using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tabla : System.Web.UI.Page
{
    private Arreglo arr;
    private ArrayList datos;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.arr = new Arreglo();
        this.datos = this.arr.GetLista();
    }


    public ArrayList getLista()
    {
        return this.datos;
    }
}