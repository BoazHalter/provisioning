pipeline 
{
	
  agent none 
  	
  
  stages 
  { 
	 environment {
        AZURE_AD_USER = 'root'
        AZURE_PASSWORD = 'cueryuc1!cueryuc1!'
    }  
	stage('Run Compiler') 
	{
        agent 
				
            docker 
			{
                image 'ansible/awx_task:1'
                args '-v /root/.ssh:/root/.ssh'
	
            }
        }
	    stages 
		{
		    stage('Build')
			{
		        steps
		        {
			        echo 's'
                
	 			sh '''sleep 600
				      ansible-playbook -i inventory.yaml play.yaml -vvv'''  
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
