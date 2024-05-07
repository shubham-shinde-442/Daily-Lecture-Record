
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Timetable</title>
<link rel="stylesheet" href="timetable.css">
<style>
  /* Add your CSS styling here */
  .subject-input-box {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    margin-bottom: 20px;
  }
  /* Style the semester and division dropdowns */
  #sem, #division {
    width: 100%;
    height: 45px;
    border: none;
    outline: none;
    border-radius: 5px;
    font-size: 16px;
    padding-left: 15px;
    box-shadow: 0px 0px 0px 1px rgba(0, 0, 0, 0.1);
    background-color: #f6f8fa;
    font-family: 'Poppins', sans-serif;
    transition: all 120ms ease-out 0s;
    margin-bottom: 10px;
  }

  #sem:focus, #sem:valid, #division:focus, #division:valid {
    box-shadow: 0px 0px 0px 2px #AC8ECE;
  }
</style>
</head>
<body>
  <div class="container">
    <div class="title">
      <p>New Timetable</p>
    </div>

    <form method="post" action="timetable">
      <div class="user_details">
        <div class="input_box">
          <label for="sem">Semester</label>
          <select id="sem" name="sem">
            <option value="sem1">Sem 1</option>
            <option value="sem2">Sem 2</option>
            <option value="sem3">Sem 3</option>
            <option value="sem4">Sem 4</option>
            <option value="sem5">Sem 5</option>
            <option value="sem6">Sem 6</option>
            <option value="sem7">Sem 7</option>
            <option value="sem8">Sem 8</option>
          </select>
        </div>
        <div class="input_box">
          <label for="division">Division</label>
          <select id="division" name="divi">
            <option value="all">All</option>
            <option value="A">A</option>
            <option value="B">B</option>
            <option value="C">C</option>
            <option value="AB">A,B</option>
            <option value="BC">B,C</option>
            <option value="AC">A,C</option>
          </select>
        </div>
        <div class="input_box">
          <label for="phone">Batch Strength</label>
          <input type="number" id="phone" name="strength" placeholder="Enter Number" required>
        </div>
        <div class="input_box">
          <label for="numSubjects">Number of Subjects</label>
          <input type="number" id="numSubjects"  placeholder="Enter number of subjects" min="1" max="10">
        </div>
        <div id="subjectInputs"></div>   
      </div>
     
      <div class="reg_btn">
        <input type="submit" value="Register">
      </div>
    </form>
  </div>
  <!-- Script content wrapped in a div for vertical alignment -->
  <div class="script-content">
    <script>
      function generateSubjectFields() {
        const numSubjects = parseInt(document.getElementById("numSubjects").value);
        const subjectInputs = document.getElementById("subjectInputs");
        subjectInputs.innerHTML = ""; // Clear existing subject inputs

        for (let i = 1; i <= numSubjects; i++) {
          const subjectDiv = document.createElement("div");
          subjectDiv.className = "subject-input-box"; // Apply the subject input box class
          subjectDiv.innerHTML =
            '<label for="subjectName' + i + '">Subject ' + i + ' Name:</label>' +
            '<input type="text "name="subject" id="subjectName' + i + '" name="subjectName' + i + '">' +

            '<label for="facultyName' + i + '">Faculty Name:</label>' +
            '<input type="text" name="faculty" id="facultyName' + i + '" name="facultyName' + i + '">' +

            '<label for="timings' + i + '">Timings:</label>' +
            '<input type="text" name="timing" id="timings' + i + '" name="timings' + i + '">' +

            '<label for="roomNo' + i + '">Room No:</label>' +
            '<input type="text" name="room" id="roomNo' + i + '" name="roomNo' + i + '">';

          subjectInputs.appendChild(subjectDiv);
        }
      }

      // Call the function to generate subject input fields when the page loads
      window.onload = generateSubjectFields;

      // Add an event listener to the numSubjects input element
      document.getElementById("numSubjects").addEventListener("input", generateSubjectFields);
    </script>
  </div>
      <script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.css">
<script type="text/javascript">
    // Assuming you are setting the "status" value in your server-side code
    // For demonstration purposes, we set it to "success" here.
    var status = "<%= request.getAttribute("status") %>";
    console.log("Status:", status);

    // Check if "status" is set to "success" and display the SweetAlert accordingly
    if (status === "success") {
        swal("Congrats", "Timetable Created Successfully", "success");
    }
</script>
      
  
</body>
</html>








