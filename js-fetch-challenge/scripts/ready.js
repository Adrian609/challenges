// function getTasks() {}


let ready = () => {

  return new Promise((resolve, reject) => {

    document.onreadystatechange = function() {

      if (document.readyState !== "loading") {
        resolve(console.log("Document has loaded."));  // .then()
      }
      else {
        reject(console.log("Error loading document."));   // .catch()
      }
    };
  });
};
