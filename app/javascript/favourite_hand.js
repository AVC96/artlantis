const favouriteHand = () => {
  console.log('Hello')
  const hand= document.querySelector(".fa-hand-holding-heart");
  hand.addEventListener("click",(event) => {
    hand.style.color="#3D7CF3";
 })
}

export { favouriteHand }
