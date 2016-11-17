<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab 9</title>
    <link href="Styles/Styles.css" rel="stylesheet" />
</head>
<body>
    <img src="Images/logo.gif" />
    <h1>Loan Payment Calculator</h1>
    <form id="form1" runat="server">   
    <div>
      <p>Amount: $<asp:TextBox ID="txtAmt" runat="server" CssClass="entry"></asp:TextBox></p>
        <asp:RequiredFieldValidator ID="rfvcandidate" 
               runat="server" ControlToValidate ="txtAmt"
               ErrorMessage="Please type an amount" 
               InitialValue="Please type an amount">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvclass" 
               runat="server" ControlToValidate="txtAmt" 
               ErrorMessage="Must be a value >1" MaximumValue="1000000000" 
               MinimumValue="1000" Type="Integer">
        </asp:RangeValidator>
    
      <p>Annual interest:<asp:DropDownList ID="ddlIntRate" runat="server" CssClass="entry"></asp:DropDownList></p>
    
      <p>Number of years:<asp:TextBox ID="txtYrs" runat="server" CssClass="entry"></asp:TextBox></p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
               runat="server" ControlToValidate ="txtYrs"
               ErrorMessage="Amount of years needed for results" 
               InitialValue="Amount of years needed for results">
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" 
               runat="server" ControlToValidate="txtYrs" 
               ErrorMessage="Enter a loan term in years (1-40)" MaximumValue="40" 
               MinimumValue="0" Type="Integer">

        </asp:RangeValidator>
    
      <p>Monthly payment:<asp:Label ID="lblPay" runat="server" Text="" CssClass="validator"></asp:Label></p>
    
        <asp:Button ID="btnCalc" runat="server" Text="Calculate" CssClass="button" OnClick="btnCalc_Click" /> <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
    </div>
    </form>
</body>
</html>
