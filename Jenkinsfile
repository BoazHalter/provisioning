pipeline 
{
	
  agent none 
  	
  
  stages 
  { 
	 environment {
        AZURE_AD_USER ='root'
        AZURE_PASSWORD ='cueryuc1!cueryuc1!'
    }  
	stage('Run Compiler') 
	{
        agent 
		{		
            docker 
			{
                image 'ansible/awx_task:1'
                args '-v /root/.ssh:/root/.ssh '
'	
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
				//timeout(time: 1, unit: 'MINUTES'){              
			   
  //input 'wait testing testing connection to ec2'
                
	 			sh '''
				      sleep 600
				      ansible-playbook -i inventory.yaml play.yaml -vvv
				   '''  
				//}
				
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
