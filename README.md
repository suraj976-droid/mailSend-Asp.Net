# mailSend-Asp.Net
Send Mail Using Asp.Net Program Using Webform and WebConfig Connection && Also another Program For input dropdown and FileUpload save in db and folder
-----------------------------------------

Connection: in WebConfig
<connectionStrings>
	<add name="dbconn" connectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=ImplC;Integrated Security=True;MultipleActiveResultSets=True" providerName="System.Data.SqlClient"/>
</connectionStrings>

---------------------------------------------------------------
This Folder Also Consist basic program of Asp.net
Like :-


1) Mail Send with File Upload And Multiple Gmail id in the same inputbox  ----> Mail.aspx
   
  1.1) OTP Send with random OTP ----> OTPVerify.aspx

3) id,name,salary textbox and dropdownlist of Dept and after click btn display in Label ----> Second.aspx;

4) Validatipon - 5 type ----> Validation.aspx.cs
  1)required field
   2)range validator
   3)regulerExpression - Email
   4)Custom validatopr withcode inside Validation.aspx.cs <- check
   5) Aadhar card validation - using regex
  
5)Another Program For input dropdown and FileUpload save in db and folder AND Display in GriedView AND ALSO in DataList Using DataAdapter Method dt,ds   ------> DbImplementation.aspx

6) Login without Db static password and username check and redirect to another page -----> Login.aspx

7) AutoPostBackEvent - 1 text + 2nd Textbox and when press enter after entering value in 2nd Textbox display addition value in Label Exapmple=> Label1.Text = $"Addition is {c}"; -----> AutoPostBackEvent.aspx
