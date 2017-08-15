using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ScriptManager.ScriptResourceMapping.AddDefinition
            (
                "jquery", new ScriptResourceDefinition
                {
                    Path = "~/Public/js/jquery.js",
                    DebugPath = "~/Public/js/jquery.js",
                    CdnSupportsSecureConnection = true,
                    LoadSuccessExpression = "window.jQuery"

                }
            );
        ArrayList arreglo = new ArrayList();
        arreglo.Add("Seleccione");
        arreglo.Add("opcion1");
        arreglo.Add("opcion2");
        arreglo.Add("opcion3");
        arreglo.Add("opcion4");

        opcion2.DataSource = arreglo;
        opcion2.DataBind();

    }


    public void ProcesarFormulario(Object sender, EventArgs e)
    {
        if (IsValid)
        {
            resultado_nombre.Text = nombre.Text;
        }
    }


}