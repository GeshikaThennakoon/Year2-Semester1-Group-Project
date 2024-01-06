<!DOCTYPE html>
<html lang="en">
<head>

<style>
/* Reset some default margin and padding for consistency */
body, h1, h2, h3, p, ul, li {
    margin: 0;
    padding: 0;
}

/* Set a background color for the body */
body {
    background-color: #f4f4f4;
    font-family: Arial, sans-serif;
    line-height: 1.6;
}


/* Style the main content section */
main {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    margin-top: 20px;
}

/* Style the grocery items */
.grocery-items ul {
    list-style: none;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.grocery-items li {
    width: 30%;
    margin: 10px 0;
    background-color: #f9f9f9;
    padding: 15px;
    border: 1px solid #e1e1e1;
    border-radius: 5px;
}

.grocery-items li img {
    max-width: 100%;
}

.grocery-items a {
    color: black;
}


.grocery-items li h3 {
    font-size: 1.2rem;
    margin: 10px 0;
}

.grocery-items li p {
    font-size: 0.9rem;
}

.grocery-items li span {
    display: block;
    font-weight: bold;
    margin: 10px 0;
}

.grocery-items li button {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 5px 10px;
    border-radius: 3px;
    cursor: pointer;
}








</style>


<%@include file="includes/head.jsp"%>


</head>

  
<body>

 
    
    <main>
        
        <section class="grocery-items">
            <h2>Shop By Best price</h2>

            <ul>
                <li>
                    <img src="https://m.media-amazon.com/images/I/51ebZJ+DR4L._AC_UF1000,1000_QL80_.jpg" alt="banana">
                    <br><br>
                    <h3>Banana</h3>
                    <p> Best price from us 1kg</p>
                    <span>Rs 200.00</span>
                    <a class= "hbutton" href="orders.jsp"><button>Add Order</button></a>
                </li>
                <li>
                    <img src="https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2022/04/white_rice_cholesterol_732x549_thumb-732x549.jpg" alt="rice">
                    <br><br><br>
                    <h3> Samba</h3>
                    <p> Best price from us 1kg </p>
                    <span>Rs 197.00</span>
                    <a class= "hbutton" href="orders.jsp"><button>Add Order</button></a>
                </li>
                <li>
                    <img src="https://blogger.googleusercontent.com/img/a/AVvXsEhOTfzJv63lOocrMjmfij2VzqMWra1gLJeHDcdRGvxzhCHAoDexg9ZzDYqRUCzTauS9krdqD7kHRwq_ym5igKkdAh_5hqJxgSeEG59QQ2PLPa6dySkZHHrlNOkyGYDnfxlTRimXkTKRYozCSVC6mPdTn67e_aImQx3B7bu8WDlQllsLBH_c6DAKGASKfQ" alt="ice">
                    <br><br><br><br><br>
                    <h3>Noosa ice cream</h3>
                    <p>Best price from us 1L</p>
                    <span>Rs 550.00</span>
                    <a class= "hbutton" href="orders.jsp"><button>Add Order</button></a>
      
                </li>
             
            </ul>



            <br><br><br><br>
            <h2>Shop by Category</h2>   
            
            <ul>
                <li>
                     <img src="https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg?w=400&h=300&c=crop" alt="vegitable">
                     <br><br><br><br>
                     <h3><a href="orders.jsp">vegetables</a></h3>

                </li>
                <li>
                    <img src="https://www.healthyeating.org/images/default-source/home-0.0/nutrition-topics-2.0/general-nutrition-wellness/2-2-2-3foodgroups_fruits_detailfeature.jpg?sfvrsn=64942d53_4" alt="fruits">
                    <br><br><br><br><br><br>
                    <h3><a href="orders.jsp">Fruits</a></h3>

               </li>
               <li>
                <img src="https://static.beautytocare.com/media/catalog/product/cache/global/image/1300x1300/85e4522595efc69f496374d01ef2bf13/c/h/chicco-baby-moments-maternity-bag-pink.jpg" alt="baby products">
                <h3><a href="orders.jsp">baby products</a></h3>

              </li>

             <li>
               <img src="https://hips.hearstapps.com/thepioneerwoman/wp-content/uploads/2019/05/Cultured-Dairy-101-03.jpg" alt="dairy">
               <h3><a href="orders.jsp">Dairy</a></h3>


        </li>
        <li>
         <img src="https://facts.net/wp-content/uploads/2022/06/different-types-of-meat.jpg" alt="Meats">
         <br><br>
         <h3><a href="orders.jsp">Meats</a></h3>

       </li>

         
        <li>
             <img src="https://ychef.files.bbci.co.uk/976x549/p091595d.jpg" alt="seafood">
             <br><br>
             <h3><a href="orders.jsp">Seafood</a></h3>

         </li>

            </ul>
        </section>
    </main>

<%@include file="includes/footer.jsp" %>




















