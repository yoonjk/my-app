
## Deploy new app using mysql as deployment-config.
oc new-app -e MYSQL_USER=dev -e MYSQL_PASSWORD=redhat MYSQL_DATABASE=bank MYSQL_ROOT_PASSWORD=admin1234 registry.access.redhat.com/rhscl/mysql-56-rhel7 --name mysql --as-deployment-config


## Setting pre hook for deployment.
oc set deployment-hook dc/mysql --pre --failure-policy=ignore -c mysql -- echo "pre hook..."

## Patch prehook
oc patch dc mysql -p='{"spec":{"strategy":{"rollingParams":{"pre": {"failurePolicy": "ignore", "execNewPod": {"containerName": "mysql", "command":["echo", "Send Hi"]}}}}}}'
