using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            for (float i = 1; i <= 5; i += 0.25f)
            {
                ddlIntRate.Items.Add(new ListItem(i.ToString()));
            }
        }
        //txtAmt.Text = "$0.00";

    }

    protected void btnCalc_Click(object sender, EventArgs e)
    {
        Decimal amount = (Decimal)Convert.ToDouble(txtAmt.Text);
        int years = (int)Convert.ToInt16(txtYrs.Text);
        Decimal rate = (Decimal)Convert.ToDouble((ddlIntRate.SelectedValue)) / 100;
        Double total = Math.Round(calculateLoan(amount, rate, years), 2);
        lblPay.Text = "$" + total.ToString();
    }

    public Double calculateLoan(Decimal amount, Decimal rate, int years)
    {
        Double amountMod = (Double)(amount * (rate / 12));
        int yearsOwed = (-(years * 12));
        Double firstOp = (Double)(1 + (rate) / 12);
        Double powered = 1 - Math.Pow(firstOp, (Double)yearsOwed);
        Double total = amountMod / powered;
        return total;
    }



    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtAmt.Text = String.Empty;
        txtYrs.Text = String.Empty;
    }
}