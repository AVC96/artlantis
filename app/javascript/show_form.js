const showForm = () => {
  const makeABid = document.getElementById("bid-button");
  const form = document.getElementById("bid-form");
  const bidText = document.querySelector(".bid-text");
  if (makeABid && form && bidText) {
    makeABid.addEventListener("click", () => {
      makeABid.classList.add("button-hide");
      bidText.classList.add("button-hide");
      form.classList.remove("hide-bid");
    });
  }
};

export { showForm };
