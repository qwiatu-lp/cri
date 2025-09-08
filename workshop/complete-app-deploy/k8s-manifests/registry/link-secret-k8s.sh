kubectl get serviceaccount default -n student-workspace -o yaml > sa.yaml

#nastepnie dopisanie

#apiVersion: v1
#kind: ServiceAccount
#metadata:
#  name: default
#  namespace: student-workspace
#secrets:
#- name: quayio-pull-secret
#imagePullSecrets:
#- name: quayio-pull-secret

# i na koncu

kubectl apply -f sa.yaml

