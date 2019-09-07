# PoC of ELK Stack, taking a remotely provisioned data source (Apache logs) and injecting them into the Logstash container.

## Based on an ELK deployment defined by Anthony Lapenna (https://github.com/deviantony/docker-elk.git)

Run the latest version of the [Elastic stack][elk-stack] with Docker and Docker Compose.

To run this deployment, simply download the repo (git clone...) and execute the 'start.sh' script. This will
start the stack and inject the data sourced from the remote Git repo. 

The stack is pre-configured with the following **privileged** bootstrap user:

* user: *elastic*
* password: *changeme*

Once running, import the Dashboard1.5.ndjson to view the sample visualisations for the imported data.

The docker-compose file loads the downloaded data file, mounting it as a persistent share with the container and referencing it
in the logstash_apache.conf file, located in the logstash/pipeline folder. 




