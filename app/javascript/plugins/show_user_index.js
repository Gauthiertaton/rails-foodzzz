const cardsUser = document.querySelectorAll(".card_user");
const userInfosComplement = document.querySelector(".user_infos_complement");


cardsUser.forEach((cardUser) => {
  cardUser.addEventListener("click", (event) => {

    userInfosComplement.classList.remove("d-none");
  });
});

