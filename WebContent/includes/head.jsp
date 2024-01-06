<!DOCTYPE html>
<head>
<style>

@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Montserrat:wght@500&display=swap');



*{
    box-sizing: border-box;
    margin: 0;
    padding: 0;

} 

.header li , a, button{
    font-family: "Montserrat", sans-serif;
    font-weight: 500;
    font-size:  16px;
    color: #edf0f1;
    text-decoration: none;

}

header{
    display: flex;
    justify-content: flex-end;
    align-items: center;
    padding: 30px 10%;
    background-color: #24252A;
}

.logo{
    cursor: pointer;
    margin-right: auto;
}

.nav__links {
    list-style: none;
}

.nav__links li{

    display: inline-block;
    padding: 0px 20px;
}

.nav__links li a {
    transition:  all 0.3s ease 0s;
}

.nav__links li a:hover {
color: rgb(6, 173, 234);
}

.hbutton button{
    margin-left: 20px;
    padding: 9px 25px;
    background-color: rgb(6, 173, 234);
    border: none;
    border-radius: 50px;
    cursor: pointer;
    transition:  all 0.3s ease 0s;
}

.hbutton button:hover{
    background-color: rgba(0, 136,169,0.8);
}

.footer{
    background-color: #24252A;
}

.footercon{
    max-width: 1170px;
    margin: auto;
}

.frow{
    display: flex;
flex-wrap: wrap;
}

.header ul{
    list-style: none;
}

.footer {
    background-color: #24262b;
    padding: 70px 0;
}

.footer ul{
    list-style: none;
}

.footer-col{
    width: 25%;
    padding: 0 15px;
}

.footer-col h4{
    font-family: "Montserrat", sans-serif;
    font-size: 18px;
    color: #ffffff;
    text-transform: capitalize;
    margin-bottom: 30px;
    font-weight: 600;
    position: relative;

}

.footer-col h4::before{
content: '';
position: absolute;
left: 0;
bottom: -10px;
background-color:rgb(6, 173, 234); 
height: 2px;
box-sizing: border-box;
width: 50px;

}

.footer-col ul li:not(:last-child){
    margin-bottom: 10px;
} 

.footer-col li a {
    transition:  all 0.3s ease 0s;
}


.footer-col li a:hover {
    color: rgb(6, 173, 234);
    }
</style>

</head>

<header>



<img class="logo" src="https://storage.googleapis.com/easygrocery/2020/07/Asset-1@2x.png" alt="logo" width="160px">
        <nav>
        
        
            <ul class="nav__links">
                <li> <a class= "cta" href="index.jsp">Home</a></li>
                

        
            </ul>
        </nav>
        
        <a class= "hbutton" href="signup.jsp"><button>Sign up</button></a>
         <a class= "hbutton" href="login.jsp"><button>Login</button></a>
        <a class= "hbutton" href="orders.jsp"><button>Orders</button></a>
          <a class= "hbutton" href="contact.jsp"><button>Contact Us</button></a>

</header>

<body>

 
        
</body>