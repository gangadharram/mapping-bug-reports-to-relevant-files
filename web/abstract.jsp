<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Software_Triage</title>
        <meta charset="utf-8">

        <meta name="description" content="Your description">
        <meta name="keywords" content="Your keywords">
        <meta name="author" content="Your name">
        <meta name = "format-detection" content = "telephone=no" />
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <!--CSS-->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/responsive.css">
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="css/camera.css">
        <!--JS-->
        <script src="js/jquery.js"></script>
        <script src="js/jquery-migrate-1.1.1.js"></script>
        <script src="js/superfish.js"></script>
        <script src="js/jquery.mobilemenu.js"></script>
        <script src="js/jquery.cookie.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.ui.totop.js"></script>
        <script src="js/jquery.equalheights.js"></script>
        <script src="js/camera.js"></script>
        <script src="js/jquery.touchSwipe.min.js"></script>
        <script>
            $(document).ready(function() {
                jQuery('.camera_wrap').camera();
            });
        </script>
        <script src="js/jquery.mobile.customized.min.js"></script>
    </head>
    <body>
        <div class="global">
            <!--header-->
            <header>
                <div>
                    <div class="container">
                        <div class="row">
                            <article class="span12">
                                <div class="navbar navbar_ clearfix">
                                    <div class="navbar-inner">      
                                        <div class="clearfix">
                                            <div class="nav-collapse nav-collapse_">
                                                <ul class="nav sf-menu clearfix">
                                                    <li><a href="index.jsp">Home</a></li>
                                                    <li class="active"><a href="abstract.jsp">Abstract</a></li>
                                                    <li><a href="alogin.jsp">Manager</a></li>
                                                    <li><a href="dlogin.jsp">Dev Login</a></li>
                                                    <li><a href="tpalogin.jsp">TL Login</a></li>
                                                    <li><a href="contact.html">Registration</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </article>
                            <br><br><h1 style="margin-left: 10px" class="brand"><a href=""></a></h1>
                        </div>
                    </div>
                </div>
            </header>
           <section class="slider">
                <div class="camera_wrap">
                    <div data-src="img/picture1.jpg"><div class="camera-caption fadeIn"><p class="title1">Mapping Bug Reports to Relevant Files:
A Ranking Model, a Fine-Grained Benchmark, and Feature Evaluation</p><br><a href="#">View More</a></div></div>
</div>
            </section>
            <!--content-->
            <section class="container padBot">
                <div class="row">
                    <br><br>
                    <article class="span12">
                        <style>
                            h4{
                                color: cornflowerblue;
                            }
                        </style>
                        <div class="row">
                            <ul class="banners">
                                <h2>Abstract</h2><br>
                        <h3 style="text-align: justify;color: white">When a new bug report is received, developers usually need to reproduce the bug and perform code reviews to find the
cause, a process that can be tedious and time consuming. A tool for ranking all the source files with respect to how likely they are to
contain the cause of the bug would enable developers to narrow down their search and improve productivity. This paper introduces an
adaptive ranking approach that leverages project knowledge through functional decomposition of source code, API descriptions of
library components, the bug-fixing history, the code change history, and the file dependency graph. Given a bug report, the ranking
score of each source file is computed as a weighted combination of an array of features, where the weights are trained automatically on
previously solved bug reports using a learning-to-rank technique. We evaluate the ranking system on six large scale open source Java
projects, using the before-fix version of the project for every bug report. The experimental results show that the learning-to-rank
approach outperforms three recent state-of-the-art methods. In particular, our method makes correct recommendations within the top
10 ranked source files for over 70 percent of the bug reports in the Eclipse Platform and Tomcat projects.</h3>
                            </ul>
                        </div>
                    </article>


                </div> 
            </section><div hidden class="met"> Web Development: <a class="cop" href="http://www.metamorphozis.com"></a></div> 
        </div>

        <!--footer-->
        <footer>
            <div class="container">
                <div class="row">
                    <article class="span12">
                        <div class="row">
                            <nav class="span6">
<!--                                <ul>
                                    <li><a href="index.jsp">Home</a></li>
                                                    <li class="active"><a href="abstract.jsp">Abstract</a></li>
                                                    <li><a href="alogin.jsp">Manager</a></li>
                                                    <li><a href="dlogin.jsp">Dev Login</a></li>
                                                    <li><a href="tpalogin.jsp">TL Login</a></li>
                                                    <li><a href="contact.html">Registration</a></li>
                                </ul>-->
                            </nav>
                            <div class="span3 offset3">
                                <p>Copyright @ Registered</p>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </footer>
        <script type="text/javascript" src="js/bootstrap.js"></script>
    </body>
</html>