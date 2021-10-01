var form = document.getElementById("my-form");
    
    async function handleSubmit(event) {
      event.preventDefault();
      var status = document.getElementById("status");
      var data = new FormData(event.target);
      fetch(event.target.action, {
        method: form.method,
        body: data,
        headers: {
            'Accept': 'application/json'
        }
      }).then(response => {
        status.innerHTML = "Obrigado pela mensagem!";
        form.reset();
        status.classList.add('success')
      }).catch(error => {
        status.innerHTML = "Oops! Houve um problema com seu envio.";
        status.classList.add('error')
      });
    }
    form.addEventListener("submit", handleSubmit)
