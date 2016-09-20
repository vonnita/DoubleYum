/**
 * 
 */
var cont = 0;

function register(){

     cont++;
		
		if(cont==1){
		 	$('.box').animate({height:'695px'}, 550);
			$('.show').css('display','block');
			$('#logintoregister').text('Registration');
			$('#buttonlogintoregister').text('Get Cooking!');
			$('#plugintoregister').text("Already Registered?");
			$('#textchange').text('Sign in');
		}
		else
		{
			$('.show').css('display','none');
			$('.box').animate({height:'365px'}, 550);
			$('#logintoregister').text('Login');
			$('#buttonlogintoregister').text('Login');
			$('#plugintoregister').text("Not Registered?");
			$('#textchange').text('Register');
			cont = 0;
		}
}