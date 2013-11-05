using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TesteAppWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            Label1.Text = "Panel atualizado às " + DateTime.Now.ToLongTimeString();
        }

        protected void btnAtualizar_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            lblBotao.Text = "Botão clicado às " + DateTime.Now.ToLongTimeString();
        }
    }
}