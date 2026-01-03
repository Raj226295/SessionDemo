<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Privacy Policy - CodeHub</title>
<link rel="stylesheet" href="styles.css">
</head>

<style>
 /* General Reset */
		* {
		    margin: 0;
		    padding: 0;
		    box-sizing: border-box;
		    font-family: 'Poppins', sans-serif;
		}
		
		/* Body Styling */
		 body {
            background: black;
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
            padding-top: 150px;
        }


		.navbar {
		    display: flex;
		    justify-content: space-between;
		    align-items: center;
		    padding: 15px 40px;
		    background: #111;
		    box-shadow: 0 2px 10px rgba(255, 0, 255, 0.3);
		    width: 100%;
		    position: fixed;
		    top: 0;
		    left: 0;
		}
		
		.navbar h1 {
		    font-size: 28px;
		    color: purple;
		}
		
		.navbar div {
		    display: flex;
		    align-items: center;
		    gap: 50px;
		    margin-right: 600px;
		}
		
		.navbar a {
		    text-decoration: none;
		    color: white;
		    font-size: 18px;
		}
		
		

/* Main Content */
.container {
	padding: 40px;
	text-align: left;
	
}

h1 {
	font-size: 36px;
		color: #c27bff;
	
}

h2 {
	font-size: 24px;
	color: #c27bff;
	margin-top: 20px;
}

/* h3 {
    font-size: 20px;
    margin-top: 10px;
    color: #d4b1ff;
}
 */
p {
	font-size: 16px;
	line-height: 1.6;
}

/* Back Button */
.back-button {
	background: transparent;
	border: 2px solid #b035e8;
	color: white;
	padding: 10px 20px;
	font-size: 18px;
	cursor: pointer;
	margin-bottom: 20px;
}

.back-button:hover {
	background-color: #b035e8;
}

 .footer {
		    display: flex;
		    flex-direction: row; /* Ensures left-to-right layout */
		    justify-content: space-between;
		    align-items: center;
		    padding: 40px 60px;
		    border-top: 1px solid purple;
		    box-shadow: 0 2px 20px rgba(255, 0, 255, 0.3);
		}
		
		.social-icons {
		    display: flex;
		    gap: 20px;
		}
		
		.social-icons a {
		    text-decoration: none;
		}
		
		.social-icons img {
		    width: 40px;
		    height: 40px;
		}
		
		.footer-links {
		    display: flex;
		    gap: 100px;
		     margin-left: auto; /* Pushes footer links to the right */
		}
		
		.footer-column {
		    text-align: left;
		}
		
		.footer-column h3 {
		    margin-bottom: 10px;
		    font-size: 18px;
		}
		
		.footer-column a {
		    display: block;
		    color: white;
		    text-decoration: none;
		    margin: 5px 0;
		    font-size: 16px;
		}
		
		.footer-column a:hover {
		    color: purple;
		}
		
        @media (max-width: 768px) {
    .navbar {
        flex-direction: column;
        align-items: center;
        text-align: center;
    }
    
     nav a {
                padding: 10px;
                display: block;
                width: 100%;
                text-align: center;
            }
    
    .navbar div {
        flex-direction: column;
        gap: 10px;
    }

    .container {
        font-size: 24px;
    }

    .buttons {
        gap: 10px;
    }

    .button {
        width: 150px;
        font-size: 16px;
    }

    .course-container {
        flex-direction: column;
    }
    .footer {
        flex-direction: column;
        align-items: center;
        text-align: center;
    }

    .footer-links {
        flex-direction: column;
        text-align: center;
    }
}

@media (max-width: 480px) {
    .navbar h1 {
        font-size: 20px;
    }

    .navbar a {
        font-size: 14px;
    }

    .container {
        font-size: 20px;
    }

    .button {
        width: 140px;
        font-size: 14px;
        padding: 8px;
    }
}
        
        .box-content{
		      width: 600px;
		      height: 600px;
		      background-color: #A60AA3;
		      background: radial-gradient(circle, rgba(80,0,80,1) 0%, rgba(0,0,0,1) 70%);
		      position: absolute;
		      left: 30%;
		      bottom: 35%;
		      z-index: -1; }
</style>
<body>
	<div class="navbar">
        <h1 style="color: purple;">CodeHub</h1>
        <div>
            <a href="Home.jsp">Home</a>
            <a href="courses.jsp">Course</a>
            <a href="About.jsp">About</a>
        </div>
        
    </div>
    
     <div class="box">
      <div class="box-content"></div>
    </div>

	<div class="container">

		<h1>Introduction</h1>
		<p>These Privacy Policy govern your use of our website and
			services. By accessing or using our services, you agree to be bound
			by these terms.</p>

		<h3>Chai Code Privacy Policy</h3>
		<p>Privacy policy</p>

		<h2>SECTION 1 - WHAT DO WE DO WITH YOUR INFORMATION?</h2>
		<p>When you purchase something from our store, as part of the
			buying and selling process, we collect the personal information you
			give us such as your name, address and email address. When you browse
			our store, we also automatically receive your computer's internet
			protocol (IP) address in order to provide us with information that
			helps us learn about your browser and operating system. Email
			marketing: With your permission, we may send you emails about our
			store, new products and other updates.</p>

		<h2>SECTION 2 - CONSENT</h2>
		<h3>How do you get my consent?</h3>
		<p>When you provide us with personal information to complete a
			transaction, verify your credit card, place an order, arrange for a
			delivery or return a purchase, we imply that you consent to our
			collecting it and using it for that specific reason only. If we ask
			for your personal information for a secondary reason, like marketing,
			we will either ask you directly for your expressed consent, or
			provide you with an opportunity to say no.</p>
		<h3>How do you get my consent?</h3>
		<p>When you provide us with personal information to complete a
			transaction, verify your credit card, place an order, arrange for a
			delivery or return a purchase, we imply that you consent to our
			collecting it and using it for that specific reason only. If we ask
			for your personal information for a secondary reason, like marketing,
			we will either ask you directly for your expressed consent, or
			provide you with an opportunity to say no.</p>

		<h2>SECTION 3 - DISCLOSURE</h2>
		<p>We may disclose your personal information if we are required by
			law to do so or if you violate our Terms of Service.</p>

		<h2>SECTION 4 - PAYMENT</h2>
		<p>We use Razorpay for processing payments. We/Razorpay do not
			store your card data on their servers. The data is encrypted through
			the Payment Card Industry Data Security Standard (PCI-DSS) when
			processing payment. Your purchase transaction data is only used as
			long as is necessary to complete your purchase transaction. After
			that is complete, your purchase transaction information is not saved.
			Our payment gateway adheres to the standards set by PCI-DSS as
			managed by the PCI Security Standards Council, which is a joint
			effort of brands like Visa, MasterCard, American Express and
			Discover. PCI-DSS requirements help ensure the secure handling of
			credit card information by our store and its service providers. For
			more insight, you may also want to read terms and conditions of
			razorpay on,</p>

		<h2>SECTION 5 - THIRD-PARTY SERVICES</h2>
		<p>In general, the third-party providers used by us will only
			collect, use and disclose your information to the extent necessary to
			allow them to perform the services they provide to us. However,
			certain third-party service providers, such as payment gateways and
			other payment transaction processors, have their own privacy policies
			in respect to the information we are required to provide to them for
			your purchase-related transactions. For these providers, we recommend
			that you read their privacy policies so you can understand the manner
			in which your personal information will be handled by these
			providers. In particular, remember that certain providers may be
			located in or have facilities that are located a different
			jurisdiction than either you or us. So if you elect to proceed with a
			transaction that involves the services of a third-party service
			provider, then your information may become subject to the laws of the
			jurisdiction(s) in which that service provider or its facilities are
			located. Once you leave our store's website or are redirected to a
			third-party website or application, you are no longer governed by
			this Privacy Policy or our website's Terms of Service. Links When you
			click on links on our store, they may direct you away from our site.
			We are not responsible for the privacy practices of other sites and
			encourage you to read their privacy statements.</p>

		<h2>SECTION 6 - SECURITY</h2>
		<p>To protect your personal information, we take reasonable
			precautions and follow industry best practices make sure it is not
			inappropriately lost, misused, accessed, disclosed, altered or
			destroyed.</p>

		<h2>SECTION 7 - COOKIES</h2>
		<p>We use cookies to maintain session of your user. It is not used
			to personally identify you on other websites.</p>

		<h2>We use cookies to maintain session of your user. It is not
			used to personally identify you on other websites.</h2>
		<p>By using this site, you represent that you are at least the age
			of majority in your state or province of residence, or that you are
			the age of majority in your state or province of residence and you
			have given us your consent to allow any of your minor dependents to
			use this site.</p>

		<h2>SECTION 9 - CHANGES TO THIS PRIVACY POLICY</h2>
		<p>We reserve the right to modify this privacy policy at any time,
			so please review it frequently. Changes and clarifications will take
			effect immediately upon their posting on the website. If we make
			material changes to this policy, we will notify you here that it has
			been updated, so that you are aware of what information we collect,
			how we use it, and under what circumstances, if any, we use and/or
			disclose it. If our store is acquired or merged with another company,
			your information may be transferred to the new owners so that we may
			continue to sell products to you.</p>

		<h2>QUESTIONS AND CONTACT INFORMATION</h2>
		<p>If you would like to: access, correct, amend or delete any
			personal information we have about you, register a complaint, or
			simply want more information contact our </p>

		<p>Privacy Compliance Officer at [team@hiteshchoudhary.com] or by
			mail at [507, AB Nirman nagar, Ajmer Road, Jaipur, Rajasthan 302019,
			India] </p>
		<p>[Re: Privacy Compliance Officer] [507, AB Nirman nagar, Ajmer Road, Jaipur, Rajasthan 302019, India]</p>
	</div>
	
	
		 <footer class="footer">
        <div class="social-icons">
            <a href="#"><img src="Images/communication 1.png" alt="Facebook"></a>
            <a href="#"><img src="Images/social 1.png" alt="Instagram"></a>
            <a href="#"><img src="Images/linkedin 1.png" alt="LinkedIn"></a>
            <a href="#"><img src="Images/youtube 1.png" alt="YouTube"></a>
        </div>
        <div class="footer-links">
            <div class="footer-column">
                <h3>Legal</h3>
                <a href="#">Docs</a>
                <a href="Privacy_policy.jsp">Privacy Policy</a>
                <a href="#">Terms of Service</a>
                <a href="#">Pricing Policy</a>
            </div>
            <div class="footer-column">
                <h3>Quick Link</h3>
                <a href="courses.jsp">Courses</a>
                <a href="#">Cohort</a>
                <a href="#">Coding Hero</a>
                
            </div>
        </div>
    </footer>
		
</body>
</html>
