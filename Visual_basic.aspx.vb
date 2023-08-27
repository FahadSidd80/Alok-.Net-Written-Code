Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration



Public Class RegistrationForm
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("xyz").ConnectionString)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dispaly()
    End Sub
    Public Sub Dispaly()
        con.Open()
        Dim cmd As New SqlCommand("select * from student", con)
        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable()
        da.Fill(dt)
        con.Close()
        grd.DataSource = dt
        grd.DataBind()

    End Sub

    Protected Sub btnsave_Click(sender As Object, e As EventArgs)
        con.Open()
        Dim cmd As New SqlCommand("insert into student(name,city,age)values('" + txtname.Text + "','" + txtcity.Text + "','" + txtage.Text + "')", con)
        cmd.ExecuteNonQuery()
        con.Close()
        Dispaly()

    End Sub
End Class