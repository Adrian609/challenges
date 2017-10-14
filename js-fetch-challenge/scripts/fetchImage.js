ready().then(() => {

  fetch("../images/logo.png")
  .then(response => {
    if(response.ok){
      imageBlob = response.blob();
      return imageBlob;
    } else {
      console.log("error");
    }
  })
  .then(imageBlob => {
    let mainElement = document.getElementById('main');
    let objectURL = URL.createObjectURL(imageBlob);
    let imageElement = document.createElement('img');
    imageElement.src = objectURL;
    mainElement.appendChild(imageElement);
  });
});
