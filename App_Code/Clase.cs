using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Clase
/// </summary>
public class Clase
{
    private string nombre;
    private string correo;
    private int id;
    private int numero1;
    private int numero2;
    private int resultado;

    public Clase()
    {
        this.numero1 = 13;
        this.numero2 = 14;
       
    }

    //metodos de ejecucion, void no devuelven nada
    public void SetNumeroUno()
    {
        this.resultado = this.numero1 + this.numero2;
    }
    //metodos de retorno
    public int GetNumeroUno()
    {
        return this.resultado;
    }
    //metodos estaticos
    //No pueden acceder a ningun recurso de la clase
    //utilizan la palabra reservada static
    //No requieren una instancia de clase para ser visualizados
    //Para llamarlos clase.MiMetodo();
    //Sin embargo si pueden recibir parametros
    //se utilizan para mostrar informacion
    public static string miMetodo()
    {
        return "Mi muñeca me hablo";
    }

    public static int otroMetodo(int n1, int n2)
    {
        int result = n1 + n2;
        return result;
    }
}