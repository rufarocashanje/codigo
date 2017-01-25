<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tentativa.aspx.cs" Inherits="tentativa.tentativa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>Codigo</p>
        <asp:TextBox ID="codigo" runat="server"></asp:TextBox>
        <p>Nome</p>
        <asp:TextBox ID="nome" runat="server"></asp:TextBox>
        <p>Endereco</p>
        <asp:TextBox ID="endereco" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="submeter" Text="Submeter" runat="server"/>
    </div>
    </form>
    <%  System.Data.SQLite.SQLiteConnection conn;
        //System.Data.SQLite.SQLiteConnection.CreateFile("nova.sqlite");
        conn = new System.Data.SQLite.SQLiteConnection("Data Source=rufaro.db;Version=3;");
            conn.Open();
         //string sql1="create table pessoa(codigo varchar(5), nome varchar(20),endereco varchar(15))";
         //System.Data.SQLite.SQLiteCommand command=new System.Data.SQLite.SQLiteCommand(sql1,conn);
         //try
         //{
             //command.ExecuteNonQuery();
         //}
         //catch 
         //{
             //ero
         //}
        if (codigo.Text != "" && nome.Text != "") {

            string sql = "insert into verdade(nome,idade) values ('"+codigo.Text+"','"+nome.Text+"')";
            System.Data.SQLite.SQLiteCommand command1 = new System.Data.SQLite.SQLiteCommand(sql, conn);
            command1.ExecuteNonQuery();
            Response.Write("success"); 
            
        }
        else
        {%>
            
        <%}
        
        
        
          %>
  
</body>
</html>
