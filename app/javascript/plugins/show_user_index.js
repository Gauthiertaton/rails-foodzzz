const cardsUser = document.querySelectorAll(".card_user");
const viewBloc = document.querySelector(".view_bloc");


cardsUser.forEach((cardUser) => {
  cardUser.addEventListener("click", (event) => {

    viewBloc.classList.remove("d-none");
  });
});

