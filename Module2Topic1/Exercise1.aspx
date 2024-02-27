<<%@ Page Title="Malayan Music Player" Language="C#" MasterPageFile="~/Site1.master" AutoEventWireup="true" CodeBehind="~/Exercise1.aspx.cs" Inherits="Module1Exercise1.Exercise1" %>

<%-- Exercise 1: Exploring Basic Controls of ASP.NET WebForms--%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<<asp:Content ID="Exercise2Content" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Malayan Music Player</h1>
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>
        <%-- TODO 2.1 Create a label displaying the name of your favorite song and its artist (e.g. Yesterday - The Beatles)--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_custom_controls.htm#:~:text=Label --%>
        <asp:Label ID="Label1" runat="server" Text="Bakit Part 2"></asp:Label>
        <br />  <br />
        <%-- TODO 2.2 Create an image that is 200px by 200x big showing the album cover of your favorite song. Make sure to set the alternative text. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Image%20Control --%>
        <asp:Image ID="AlbumCover" runat="server" ImageUrl="https://img.discogs.com/kHzNAZTjZh86ZrylV9tscxAWWu8=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-9963095-1491068364-5240.jpeg.jpg" AlternateText="Album Cover" Width="200" Height="200"/>
        <br /> <br />
        <%-- TODO 2.3 Create three buttons with texts. "Prev", "Play", and "Next" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Button%20Controls --%>
        <asp:Button ID="Prev" runat="server" Text="Prev" />
        <asp:Button ID="Play" runat="server" Text="Play" onclick="playBtn_Click"/>
        <asp:Button ID="Next" runat="server" Text="Next" />
        <br /> <br />
        <%-- TODO 2.4 Create a span. Once the play button is pressed, the span should display "Now playing <favorite song>" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_event_handling.htm#:~:text=onclick=%22btnclick_Click%22 --%>
        <span id="nowPlaying" runat="server"></span> 
        <br /> <br />
        <%-- TODO 2.5 Display the current time using the template syntax <%= %> --%>
        <%-- Hint: https://learn.microsoft.com/en-us/troubleshoot/developer/webapps/aspnet/development/inline-expressions#:~:text=displays%20the%20current%20time --%>
        <%=DateTime.Now.ToShortDateString() %>
</asp:Content>