oc secrets link default quayio-pull-secret --for=pull,mount -n student-workspace
oc secrets link deployer quayio-pull-secret --for=pull,mount -n student-workspace
