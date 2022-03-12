
const showForm = () => {
  const makeABid = document.getElementById("bid-button")
  const form = document.getElementById("bid-form")
  const bidText = document.querySelector(".bid-text");
  console.log(makeABid)
  console.log(form)
  makeABid.addEventListener("click", (event) => {
    event.preventDefault();
    makeABid.classList.add("button-hide");
    bidText.classList.add("button-hide");
    form.classList.remove("hide-bid");
  })
}

export { showForm }
