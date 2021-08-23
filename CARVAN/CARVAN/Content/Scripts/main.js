//  ----Scroll to up---- 
const toTop = document.querySelector(".to-top");

window.addEventListener("scroll", () => {
  if (window.pageYOffset > 100) {
    toTop.classList.add("active");
  } else {
    toTop.classList.remove("active");
  }
});


    // ----Show login----
    function menuToggle(){
      const toogleMenu = document.querySelector('.menu');
      toogleMenu.classList.toggle('active')
  }

 
