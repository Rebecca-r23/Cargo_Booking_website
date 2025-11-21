<%@ Page Title="" Language="C#" MasterPageFile="~/User/Site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="User_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .carousel-inner img {
            height: 600px;
        }

        .Cards {
            min-height: 180px;
            border-radius: 5px;
            background-color: #FAF9F6;
            border: 1px solid #ffd800;
            box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 4px;
        }

            .Cards h4 {
                color: #11101d;
            }

        #Res-1 ul li, #Res-2 ul li {
            padding: 10px 0px;
        }

        #Res-2 ul li {
            padding: 10px 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="carouselExampleInterval" class="carousel slide mt-3" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="1500">
                <img src="images/courier 1.jpg" class="d-block w-100" width="400" height=" 700" alt="..." />
                <div class="carousel-caption d-none d-md-block">
                    <div class="line">
                        <h1 class='lineUp'>
                            <br />
                            Providing The Highest Quality Delivery </h1>
                        <br />
                        <a class="btn btn-primary bin" href="#" role="button">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="1500">
                <img src="images/courier 2.jpg" class="d-block w-100" width="400" height=" 700" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <div class="line">
                        <h6 class='lineUp bit'>
                            <br />
                            Safely Handed Product</h6>
                        <a class="btn btn-primary bin" href="#" role="button">Book Now</a>
                    </div>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="1500">
                <img src="images/courier 4.jpg" class="d-block w-100 pitch" width="400" height=" 700" alt="..." />
                <div class="carousel-caption d-none d-md-block">
                    <div class="line">
                        <h6 class='lineUp'>
                            <br />
                            24*7 Customer Facility</h6>
                        <a class="btn btn-primary bin" href="#" role="button">Book Now</a>
                    </div>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>


    <div class=" container">
        <div class=" card mt-5 ">
            <div class=" card-body mt-3">
                <div class=" row">
                    <div class=" col-lg-3">
                        <img src="images/mt-1075-home-icons01.png" />
                        <h3 class=" text-start mt-4">Delivery Price</h3>
                        <p class=" text-start">All deliveries are carried within<br />
                            several days..</p>
                    </div>

                    <div class=" col-lg-3">
                        <img src="images/mt-1075-home-icons02.png" />
                        <h3 class=" text-start mt-4">Delivery Term</h3>
                        <p class=" text-start">Our prices depend on the size<br />
                            of your parcel.</p>
                    </div>

                    <div class=" col-lg-3">
                        <img src="images/mt-1075-home-icons03.png" />
                        <h3 class=" text-start mt-4">Nearest Depot</h3>
                        <p class=" text-start">We got depots in 56 countries<br />
                            worldwide..</p>
                    </div>

                    <div class=" col-lg-3">
                        <img src="images/mt-1075-home-icons04.png" />
                        <h3 class=" text-start mt-4">Call for a Courier</h3>
                        <p class=" text-start">Cannot receive your delivery? Let<br />
                            us send it to you with a mail guy..</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class=" container ">
        <div class=" card hero mt-5">
            <div class=" card-body">
                <div class=" row">
                    <div class=" col-xl-6">
                        <h2 class="">SOME WORDS ABOUT US</h2>
                        <p class=" para">
                            Why using our delivery services? We guarantee that your sending will be delivered safely and in time to any point of our planet. Our delivery company built thousands of depots in dozens of countries all around the Globe to provide our clients with high-quality international delivery services.
       <br />
                            <br />
                            Each our employee loves what he or she does. That’s why our services are the best for any despatch goal.                               

                        </p>
                        <div class=" row">
                            <div class=" col-xl-6">
                                <h4 class=" mt-3">Mission </h4>


                                <p class=" para mt-4">Out purpose is making our customers happy by delivering anything they want and need with: </p>



                                <i class="fa-solid fa-chevron-right px-2" style="color: #bb1616;"></i>No delays<br />
                                <i class="fa-solid fa-chevron-right px-2" style="color: #bb1616;"></i>No damaging<br />
                                <i class="fa-solid fa-chevron-right px-2" style="color: #bb1616;"></i>No extra fees<br />
                            </div>

                            <div class=" col-xl-6">
                                <h4 class=" mt-3">3 Years of Experience</h4>


                                <p class=" para mt-4">This is only the beginning of our history. We are eagerly waiting for new delivery challenges and for now, we offer: </p>



                                <i class="fa-solid fa-chevron-right px-2" style="color: #bb1616;"></i>Discounts for loyal customers<br />
                                <i class="fa-solid fa-chevron-right px-2" style="color: #bb1616;"></i>Partnership with businesses<br />
                                <i class="fa-solid fa-chevron-right px-2" style="color: #bb1616;"></i>Good vacancies for everyone<br />
                            </div>


                        </div>
                    </div>

                    <div class=" col-xl-6">
                        <img src="images/mt-1075-home-img01.jpg" />
                    </div>
                </div>

            </div>
        </div>
    </div>


    <div class=" container">
        <div class=" card mt-3">
            <div class=" card-body">
                <div class=" row">
                    <div class=" col-xl-4">
                        <img src="images/mt-1075-home-img02.jpg" />
                        <h3 class=" text-center mt-4">Accurate Time & Day</h3>
                        <p class=" text-center">If we fail to deliver your parcel just in time, we<br />
                            will do this at no charge...</p>
                        <div class=" text-center">
                            <a class="btn btn-primary dom " href="#" role="button">Read More</a>
                        </div>

                    </div>
                    <div class=" col-xl-4">
                        <img src="images/mt-1075-home-img03.jpg" />
                        <h3 class=" text-center mt-4">Freight Servicest</h3>
                        <p class=" text-center">We freight parcels of any size by air, sea and<br />
                            train transportation...</p>
                        <div class=" text-center">
                            <a class="btn btn-primary dom " href="#" role="button">Read More</a>
                        </div>
                    </div>
                    <div class=" col-xl-4">
                        <img src="images/mt-1075-home-img04.jpg" />
                        <h3 class=" text-center mt-4">Courier Services</h3>
                        <p class=" text-center">Let us make a delivery to the location specified<br />
                            by you...</p>
                        <div class=" text-center">
                            <a class="btn btn-primary dom " href="#" role="button">Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

