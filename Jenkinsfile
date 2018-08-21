pipeline 
{
	
  agent none 
  	
  
  stages 
  { 
	stage('Run Compiler') 
	{
        agent 
		{
            docker 
			{
                image 'ansible/awx_task:1'
                args '-v /tmp/ansible:/'	
            }
        }
	    stages 
		{
		    stage('Build')
			{
		        steps
		        {
			        echo 's'
				      //sh '''mvn sonar:sonar \
  				    //-Dsonar.organization=boazhalter-github \
  				    //-Dsonar.host.url=https://sonarcloud.io \
  				    //-Dsonar.login=31fefaf1f833f46277297fcde612b9fdeb6f9cbe''' 
              sh 'ansible-playbook'        
				
	                }
		    }
	       	stage('Test') 
			{		  
                steps
	            {
                    sh 'echo mvn test'
			    
                }
            }
        }	
        		
    }
  }
}
