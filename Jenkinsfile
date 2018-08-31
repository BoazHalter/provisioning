pipeline 
{
	
  agent none 
  	
   environment {
         AZURE_AD_USER = 'root'	
	 AZURE_PASSWORD = 'cueryuc1!cueryuc1!'
	}
  stages 
  { 
	stage('Run Compiler') 
	{
	agent { dockerfile true }	
        // agent 
		{
            //docker 
			{
        //        image '10.0.0.26:5012/ansible:centos'
                //args '-v /root/.ssh:/root/.ssh'	
          //  }
        }
	    stages 
		{
		    stage('Build')
			{
		        steps
		        {
			        echo 's'
				input ''
				sh 'ansible-playbook -i inventory.yaml play.yaml -vvv'    
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
