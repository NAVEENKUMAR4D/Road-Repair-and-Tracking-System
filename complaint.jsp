<!DOCTYPE html>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="form.css">
        <title>Complaint Portal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body  style="background: linear-gradient(to right, #00ff00, #ffff00);">
    <div class="container">  
      <form id="contact" action="addcomplaint.jsp" method="post">
        <h3>Add Complaint</h3>
        <fieldset>
          <input placeholder="Name(optional)" type="text" name="name" tabindex="1" autofocus>
        </fieldset>
        <fieldset>
          <input placeholder="Email Address(optional)" type="text" name="email" tabindex="2" >
        </fieldset>
        <fieldset>
          <input placeholder="Phone Number (optional)" type="text" name="telephone" tabindex="3">
        </fieldset>
        <fieldset>
          <input placeholder="Road Name" type="text" name="roadname" tabindex="1" required autofocus>
        </fieldset>
        <fieldset>
          <input placeholder="Road Damage Location/Landmark" type="text" name="location" tabindex="1" required autofocus>
        </fieldset>
        <fieldset>
          <input placeholder="Area" type="text" name="area" tabindex="1" required autofocus>
        </fieldset>
        <fieldset>
          <textarea placeholder="Descirption" name= "description" tabindex="5" required></textarea>
        </fieldset>

        <fieldset>
          <textarea placeholder="Comments" name= "comments" tabindex="5" required></textarea>
        </fieldset>

        
          <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
        
    </div>
</body>
</html>
