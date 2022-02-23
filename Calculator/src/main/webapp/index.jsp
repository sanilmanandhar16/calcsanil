<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .border-black{
            border:1px solid black;
        }

        .c-width{
            width: 350px;
        }

        .buttons > button{
            flex-basis: 100%
        }

        .flex-basis-100{
            flex-basis:100%;
        }
    </style>
  </head>
  <body>
    <form action="calculate" method="get">
      <div class="border-black mx-auto mt-5 c-width">
        <div class="d-flex m-1">
          <input type="text" class="form-control" id="screen" disabled value="${(empty result)?'':result}">
          <input type="text" class="form-control" id="hidden" hidden value="${(empty result)?'':result}" name="calc">
          <button class="btn btn-primary ms-2" type="reset">C</button>
        </div>
        <div class="d-flex w-100 my-1 flex-column">
        <div class="d-flex w-100 justify-content-around buttons my-1">
            <button class="btn btn-primary mx-1" onclick="display(event, '/')">/</button>
            <button class="btn btn-primary mx-1" onclick="display(event, '*')">*</button>
            <button class="btn btn-primary mx-1" onclick="display(event, '-')">-</button>
            <button class="btn btn-primary mx-1" onclick="display(event, '+')">+</button>
          </div>
          <div class="d-flex w-100 justify-content-around buttons my-1">
            <button class="btn btn-primary mx-1" onclick="display(event, '7')">7</button>
            <button class="btn btn-primary mx-1" onclick="display(event, '8')">8</button>
            <button class="btn btn-primary mx-1" onclick="display(event,'9')">9</button>
          </div>
          <div class="d-flex w-100 justify-content-around buttons my-1">
            <button class="btn btn-primary mx-1" onclick="display(event,'4')">4</button>
            <button class="btn btn-primary mx-1" onclick="display(event,'5')">5</button>
            <button class="btn btn-primary mx-1" onclick="display(event,'6')">6</button>
          </div>
          <div class="d-flex w-100 justify-content-around buttons my-1">
            <button class="btn btn-primary mx-1" onclick="display(event,'1')">1</button>
            <button class="btn btn-primary mx-1" onclick="display(event,'2')">2</button>
            <button class="btn btn-primary mx-1" onclick="display(event,'3')">3</button>
          </div>
          <div class="d-flex w-100 justify-content-around buttons my-1">
            <button class="btn btn-primary mx-1" onclick="display(event,'0')">0</button>
            <button class="btn btn-primary mx-1" onclick="display(event,'.')">.</button>
            <button class="btn btn-primary mx-1" type="submit">=</button>
          </div>
        </div>
      </div>
    </form>
  </body>
</html>

<script>
let screen = document.getElementById("screen");
let hidden = document.getElementById("hidden");
function display(e,num){
	e.preventDefault();
	screen.value += num;
    hidden.value += num;
}
</script>
