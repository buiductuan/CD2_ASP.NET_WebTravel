<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.IO" %>
<script runat="server">

    void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("CourseDetail_Route", "Collections/{id}", "~/Course_Detail.aspx");
        routes.MapPageRoute("GettingStarted_Route", "GettingStarted", "~/GettingStarted.aspx");
        routes.MapPageRoute("NewsletterDetail_Route", "News/{id}", "~/Newsletter_Detail.aspx");
        routes.MapPageRoute("Contact_Route", "Contact", "~/Contact.aspx");
        routes.MapPageRoute("About_Route", "About", "~/About.aspx");
        routes.MapPageRoute("ListsCourse_Route", "ListsCourse/{tag}", "~/ListsCourse.aspx");
        routes.MapPageRoute("ListsNewsletter_Route", "ListsNewsletter/{tag}", "~/ListsNewsletter.aspx");
        routes.MapPageRoute("Search_Route", "Search/{tag}", "~/Search.aspx");
        routes.MapPageRoute("RegisteCourse_Route", "RegisteCourse", "~/RegisteCourse.aspx");
    }
    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        RegisterRoutes(RouteTable.Routes);

        Application["Views"] = 0;
        Application["Online"] = 0;
        StreamReader sr = new StreamReader(Server.MapPath("~/App_Data/Views.txt"));
        Application["Views"] = int.Parse(sr.ReadLine());
        sr.Close();
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown
        Application["Online"] = (int)Application["Online"] - 1;
    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        Session["UserName"] = null;
        Session["Role"] = null;
        Session["TimeActive"] = null;
        Session["NameCourse"] = null;
        Application["Views"] = (int)Application["Views"] + 1;
        StreamWriter sw = new StreamWriter(Server.MapPath("~/App_Data/Views.txt"));
        sw.Write(Application["Views"].ToString());
        sw.Close();
        if (Application["Online"] == null)
        {
            Application["Online"] = 0;
        }
        else
        {
            Application["Online"] = (int)Application["Online"] + 1;
        }
    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        Application["Online"] = (int)Application["Online"] - 1;
    }

</script>
