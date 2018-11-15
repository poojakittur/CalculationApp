<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CalculationApp.Default" %>

<!DOCTYPE html>
<script runat="server">

    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void submitButton_Click(object sender, EventArgs e)
    {

    }

    protected void quantitybox_TextChanged(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:scriptmanager id="ScriptManager1" runat="server"></asp:scriptmanager>

        
        <div id="mainDiv">
            <h2 style="margin-left: 221px;"> Welcome </h2>
            <div class="entryDiv">
                <span class="floatLeft labelDiv">Date</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Localize ID="Localize1" runat="server"></asp:Localize>
                <span class="floatLeft"><asp:TextBox ID="Datebox" runat="server"  OnTextChanged="TextBox1_TextChanged" TextMode="Date" Width="173px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Datebox" ErrorMessage="Please select the Date"></asp:RequiredFieldValidator>
                </span>
            </div>

            <div class="entryDiv">
                <span class="floatLeft labelDiv">Name&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <span class="floatLeft"><asp:TextBox ID="namebox" runat="server" OnTextChanged="TextBox2_TextChanged" ValidateRequestMode="Enabled" Width="174px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="namebox" ErrorMessage="Please Enter the full Name"></asp:RequiredFieldValidator>
                </span>
           </div>

            <div class="entryDiv">
             <span class="floatLeft labelDiv">College&nbsp;&nbsp;</span>
             <span class="floatLeft">
                <asp:DropDownList ID="universityname" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="185px">
                <asp:ListItem Value="-1">Select College from dropdown</asp:ListItem>
                <asp:ListItem Value="1">University of Houston</asp:ListItem>
                <asp:ListItem Value="2">University of Houston Downtown</asp:ListItem>
                <asp:ListItem Value="3">University of Houston SugarLand</asp:ListItem>
                 </asp:DropDownList>
                <asp:CompareValidator ID="CompareValidator1" runat="server" Operator="NotEqual" ValueToCompare="-1" ControlToValidate="universityname" ErrorMessage="Please select the college name"></asp:CompareValidator>
                </span>
            </div>
            
            <div class="entryDiv" style="height:60px;">
            <span class="floatLeft labelDiv">Project&nbsp;</span>
            <span class="floatLeft">
                <asp:RadioButtonList ID="projectname" runat="server" Height="38px" style="margin-left: 69px" Width="182px">
                <asp:ListItem Value="B" Selected="True">Blue Answer Sheet</asp:ListItem>
                <asp:ListItem Value="P">Pink Answer Sheet</asp:ListItem>
            </asp:RadioButtonList>
            </span>
            </div>

            <div class="entryDiv">
                <span class="floatLeft labelDiv">Quantity&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <span class="floatLeft">
                    <asp:TextBox ID="quantitybox" runat="server" TextMode="Number" min="0" Width="68px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="quantitybox" ErrorMessage="Project quantity should be greater than 0"></asp:RequiredFieldValidator>
                </span>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="submitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit" />
        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="resultLable" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
