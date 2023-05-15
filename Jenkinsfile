node {
    // init env vars
    env.HOST = "example.com"
    env.OK_STATUS_CODE = "200"
    
    stage('validate_parameters') {
        if (env.env_name =~ /^(ing|dev)$/) {
            echo "The env_name value is valid!: ${env.env_name}"
        } else {
            error("The env_name parameter value is invalid. Must be 'ing' or 'dev'.  ${env.env_name}")
        }
    }

    stage('get_status') {
        echo "getting status..."
    }

    stage('validate_status') {
        echo "validating status..."
    }

    stage('send_notification') {
        echo "The status code is: ${env.ok_status_code}"
    }    

}