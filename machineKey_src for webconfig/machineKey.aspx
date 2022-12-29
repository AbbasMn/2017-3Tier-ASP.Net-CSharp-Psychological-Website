<%@ Import Namespace="System.Security.Cryptography" %>
<%@ Import Namespace="System.Security" %>
<%@ Import Namespace="System.Text" %>
<%@ Import Namespace="System" %>
<%@ Page ValidateRequest="False" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>ASP.NET machineKey Generator</title>
		<script language="C#" runat="server">
		private void Button1_Click(object sender, System.EventArgs e)
		{
			txtASPNET20.Text = getASPNET20machinekey();
			txtASPNET11.Text = getASPNET11machinekey();
		}
		
		public string getASPNET20machinekey()
		{
			StringBuilder aspnet20machinekey = new StringBuilder();
			string key64byte = getRandomKey(64);
			string key32byte = getRandomKey(32);
			aspnet20machinekey.Append("<machineKey \n");
			aspnet20machinekey.Append("validationKey=\"" + key64byte + "\"\n");
			aspnet20machinekey.Append("decryptionKey=\"" + key32byte + "\"\n");
			aspnet20machinekey.Append("validation=\"SHA1\" decryption=\"AES\"\n");
			aspnet20machinekey.Append("/>\n");
			return aspnet20machinekey.ToString();
		}

		public string getASPNET11machinekey()
		{
			StringBuilder aspnet11machinekey = new StringBuilder();
			string key64byte = getRandomKey(64);
			string key24byte = getRandomKey(24);
		
			aspnet11machinekey.Append("<machineKey ");
			aspnet11machinekey.Append("validationKey=\"" + key64byte + "\"\n");
			aspnet11machinekey.Append("decryptionKey=\"" + key24byte + "\"\n");
			aspnet11machinekey.Append("validation=\"SHA1\"\n");
			aspnet11machinekey.Append("/>\n");
			return aspnet11machinekey.ToString();
		}

		public string getRandomKey(int bytelength)
		{
			byte[] buff = new byte[bytelength];
			RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
			rng.GetBytes(buff);
			StringBuilder sb = new StringBuilder(bytelength * 2);
			for (int i = 0; i < buff.Length; i++)
				sb.Append(string.Format("{0:X2}", buff[i]));
			return sb.ToString();
		}

		</script>
		<META NAME="KEYWORDS" CONTENT="ASP.NET,machinekey,encryption,development,hints,tips,coding,programming">
		<META NAME="DESCRIPTION" CONTENT="Generates random keys for ASP.NET machineKey tags">
		<style>
* { font-family:Arial,Helvetica; }
pre { BORDER:#ccc 1px dotted; BACKGROUND-COLOR:#efefef; padding:8px; }
		</style>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<h3>ASP.NET machineKey Generator</h3>
			<P>This is an application that will generate a valid machineKey block with random, 
				secure, hard-coded keys&nbsp;that you can paste inside the &lt;system.web&gt; 
				in your web.config or machine.config file. Hard-coded encryption and validation 
				keys are needed if you have a web farm, if you use passwordFormat=Encrypted 
				with ASP.NET 2.0's Membership provider, or if you have certain ViewState 
				issues. I discussed those reasons more in-depth in my <a href="/blog/">blog</a> 
				posts about <a href="http://www.developmentnow.com/blog/InvalidViewstate+Or+Unable+To+Validate+Data+Error.aspx">
					"Invalid Viewstate"</a> errors and the <a href="http://www.developmentnow.com/blog/Using+PasswordFormat+With+ASPNET+Membership.aspx">
					ASP.NET Membership Encrypted passwordFormat</a>.
			</P>
			<P>Click the button to generate a machineKey block with a random set of keys.<br>
				<br>
				<asp:Button id="Button1" runat="server" Text="Generate Random Keys!" OnClick="Button1_Click"></asp:Button></P>
			<P>ASP.NET 1.1 machineKey:<BR>
				<asp:TextBox id="txtASPNET11" runat="server" TextMode="MultiLine" Columns="100" Rows="7" Font-Size="X-Small"></asp:TextBox></P>
			<P>ASP.NET 2.0 machineKey:
				<BR>
				<asp:TextBox id="txtASPNET20" runat="server" TextMode="MultiLine" Columns="100" Rows="7" Font-Size="X-Small"></asp:TextBox>
			</P>
			<P>&nbsp;</P>
			<P>If you want, you can also use the code (below) so you can generate the keys 
				yourself.</P>
			<pre style="">
using System;
using System.Text;
using System.Security;
using System.Security.Cryptography;

private void Button1_Click(object sender, System.EventArgs e)
{
	txtASPNET20.Text = getASPNET20machinekey();
	txtASPNET11.Text = getASPNET11machinekey();
}

public string getASPNET20machinekey()
{
	StringBuilder aspnet20machinekey = new StringBuilder();
	string key64byte = getRandomKey(64);
	string key32byte = getRandomKey(32);
	aspnet20machinekey.Append("&lt;machineKey \n");
	aspnet20machinekey.Append("validationKey=\"" + key64byte + "\"\n");
	aspnet20machinekey.Append("decryptionKey=\"" + key32byte + "\"\n");
	aspnet20machinekey.Append("validation=\"SHA1\" decryption=\"AES\"\n");
	aspnet20machinekey.Append("/&gt;\n");
	return aspnet20machinekey.ToString();
}

public string getASPNET11machinekey()
{
	StringBuilder aspnet11machinekey = new StringBuilder();
	string key64byte = getRandomKey(64);
	string key24byte = getRandomKey(24);

	aspnet11machinekey.Append("&lt;machineKey ");
	aspnet11machinekey.Append("validationKey=\"" + key64byte + "\"\n");
	aspnet11machinekey.Append("decryptionKey=\"" + key24byte + "\"\n");
	aspnet11machinekey.Append("validation=\"SHA1\"\n");
	aspnet11machinekey.Append("/&gt;\n");
	return aspnet11machinekey.ToString();
}

public string getRandomKey(int bytelength)
{
	byte[] buff = new byte[bytelength];
	RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
	rng.GetBytes(buff);
	StringBuilder sb = new StringBuilder(bytelength * 2);
	for (int i = 0; i &lt; buff.Length; i++)
		sb.Append(string.Format("{0:X2}", buff[i]));
	return sb.ToString();
}

</pre>
			<P>&nbsp;</P>
		</form>
	</body>
</HTML>
