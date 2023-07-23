
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="item">
                <h2 align="center"><i>Testimonitals</i></h2>
                <br>
                <table>
                    <tr>                                   
                        <td width="5%"></td>

                        <td width="45%">
                            <img src="{{ asset('assets/images/testimonitals6.jpg') }}" alt="about image" width="90%" height="120%">
                        </td> 

                        <td width="50%">
                            <div class="slideshow-container">
                                <div class="mySlides">
                                    <q>Visites this place after a very long time. I would say experience is the same. 
                                                  They have maintained it very well. They have good variety of beverages. I tried 
                                                  apple cake and it was great. Blackout cake also grate. Parking available in front 
                                                  of the cake shop.</q>
                                    <p class="author">- ESALA SUMANASENA -</p>
                                </div>
                                            
                                <div class="mySlides">
                                    <q>Probably a great place to lounge aaround while listening to some 'ambient' banter My 
                                                  favourite part anout this place would be the dessert here I've actually never been 
                                                  disappointed by any of them!</q>
                                    <p class="author">- MINOLIE -</p>
                                </div>
                                            
                                <div class="mySlides">
                                    <q>Geate place with aircon andf besides cakes they also offer a festival time menu including.
                                                However, it is also suitable for digital names.
                                    </q>
                                    <p class="author">- MARCO PINO - </p>
                                </div>
                                            
                                <a class="prev" onclick="plusSlides(-1)">❮</a>
                                <a class="next" onclick="plusSlides(1)">❯</a>
                                            
                                </div>
                                <div class="dot-container">
                                    <span class="dot" onclick="currentSlide(1)"></span> 
                                    <span class="dot" onclick="currentSlide(2)"></span> 
                                    <span class="dot" onclick="currentSlide(3)"></span> 
                                </div>                                    
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>


<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
    showSlides(slideIndex += n);
    }

    function currentSlide(n) {
    showSlides(slideIndex = n);
    }

    function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    if (n > slides.length) {slideIndex = 1}    
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    }
</script>
