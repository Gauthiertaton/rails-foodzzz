const cardsUser = document.querySelectorAll(".card_user");


cardsUser.forEach((cardUser) => {
  const userInfosComplement = cardUser.querySelector(".user_infos_complement");
  cardUser.addEventListener("click", (event) => {
    userInfosComplement.classList.toggle("d-none");
  });
});

