const favouriteHand = () => {
  const hand = document.querySelector(".fa-hand-holding-heart");
  if (hand) {
    hand.addEventListener("click", (event) => {
      hand.style.color = "#3D7CF3";
    });
  }
};

export { favouriteHand };
