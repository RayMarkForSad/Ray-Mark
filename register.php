<?php
require_once 'core/init.php';

if(Input::exists()) {
	if(Token::check(Input::get('token'))) {

        $validate = new Validate();
        $validation = $validate->check($_POST, array(
            'username' => array(
        	    'required' => true,
        	    'min' => 2,
        	    'max' => 20,
        	    'unique' => 'users'
        ),
        'password' => array(
            'required' => true,
            'min' => 6
        ),
        'password_again' => array(
            'required' => true,
            'matches' => 'password'
        ),
        'firstname' => array(
            'required' => true,
            'min' => 2,
            'max' => 50
        ),
        'lastname' => array(
            'required' => true,
            'min' => 2,
            'max' => 50
        ),
        'Age' => array(
            'required' => true,
            'min' => 2,
            'max' => 50
        ),
        'Gender' => array(
            'required' => true,
            'min' => 2,
            'max' => 50
        ),
        'birthday' => array(
            'required' => true,
            'min' => 2,
            'max' => 50
        ),
        'ContactNumber' => array(
            'required' => true,
            'min' => 2,
            'max' => 50
        ),
        'JobApplying' => array(
            'required' => true,
            'min' => 2,
            'max' => 50
        )
    ));

    if($validation->passed()) {
        $user = new User();

        $salt = Hash::salt(32);

        try {

            $user->create(array(
               'username' => Input::get('username'),
               'password' => Hash::make(Input::get('password'), $salt),
               'salt' => $salt,
               'firstname' => Input::get('firstname'),
               'lastname' => Input::get('lastname'),
               'Age' => Input::get('Age'),
               'Gender' => Input::get('Gender'),
               'birthday' => Input::get('birthday'),
               'CivilStatus' => Input::get('CivilStatus'),
               'Education' => Input::get('Education'),
               'Course' => Input::get('Course'),
               'Email' => Input::get('Email'),
               'ContactNumber' => Input::get('ContactNumber'),
               'JobApplying' => Input::get('JobApplying'),
               'Position' => Input::get('Position'),
               'joined' => date('Y-m-d H:i:s'),
               'group' => 1
            ));

            Session::flash('home', 'You have been registered and can now log in!');
            Redirect::to('applicantspage.php');

        } catch(Exception $e) {
            die($e->getMessage());    
        }
    } else {
        foreach($validation->errors() as $error) {
            echo $error, '<br>';
        }        
      }
   }
}
?>

<form action="" method="post">
    <div class="field">
    	<label for="username">Username:</label>
    	<input type="text" name="username" id="username" value="<?php echo escape(Input::get('username')); ?>" autocomplete="off">
    </div>

    <div class="field">
        <label for="password">Choose a password</label>
        <input type="password" name="password" id="password">
    </div>

    <div class="field">
        <label for="password_again">Enter your password again</label>
        <input type="password" name="password_again" id="password_again">
    </div> 

    <div class="field">
    	<label for="firstname">Firstname (Unang Pangalan):</labe>
        <input type="text" name="firstname" value="<?php echo escape(Input::get('firstname')); ?>" id="firstname">
    </div>

    <div class="field">
        <label for="lastname">Lastname (Apelyido):</label>
        <input type="text" name="lastname" value="<?php echo escape(Input::get('lastname')); ?>" id="lastname">
    </div>

    <div class="field">
        <label for="Age">Age (Ang iyong Edad):</label>
        <input type="text" name="Age" value="<?php echo escape(Input::get('Age')); ?>" id="Age">
    </div>

    <div class="field">
        <label for="Gender">Gender (Kasarian):</label>
        <input type="text" name="Gender" value="<?php echo escape(Input::get('Gender')); ?>" id="Gender">
    </div>

    <div class="field">
        <label for="birthday">Birthday (Kaarawan):</label>
        <input type="text" name="birthday" value="<?php echo escape(Input::get('birthday')); ?>" id="birthday">
    </div>

    <div class="field">
        <label for="CivilStatus">Civil Status</label>
        <input type="text" name="CivilStatus" value="<?php echo escape(Input::get('CivilStatus')); ?>" id="CivilStatus">
    </div>

    <div class="field">
        <label for="Education">Education (Edukasyon):</label>
        <input type="text" name="Education" value="<?php echo escape(Input::get('Education')); ?>" id="Education">
    </div>

    <div class="field">
        <label for="Course">Course (Kurso):</label>
        <input type="text" name="Course" value="<?php echo escape(Input::get('Course')); ?>" id="Course">
    </div>

    <div class="field">
        <label for="firstname">Email</label>
        <input type="text" name="Email" value="<?php echo escape(Input::get('Email')); ?>" id="Email">
    </div>

    <div class="field">
        <label for="ContactNumber">ContactNumber (KontactNumber):</label>
        <input type="text" name="ContactNumber" value="<?php echo escape(Input::get('ContactNumber')); ?>" id="ContactNumber">
    </div>

    <div class="field">
        <label for="JobApplying">JobApplying (Inaaplying Trabaho):</label>
        <input type="text" name="JobApplying" value="<?php echo escape(Input::get('JobApplying')); ?>" id="JobApplying">
    </div>

    <div class="field">
        <label for="Position">Position (Position):</label>
        <input type="text" name="Position" value="<?php echo escape(Input::get('Position')); ?>" id="Position">
    </div>

    <input type="hidden" name="token" value="<?php echo Token::generate(); ?>"> 
    <input type="submit" value="Register" >

</form>