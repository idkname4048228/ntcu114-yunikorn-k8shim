kubectl create -f deployments/scheduler/yunikorn-rbac.yaml
cd deployments/scheduler
kubectl create configmap yunikorn-configs --from-file=yunikorn-configs.yaml -n yunikorn
cd ../..
kubectl create -f deployments/scheduler/scheduler-load.yaml -n yunikorn
kubectl create -f deployments/scheduler/admission-controller-rbac.yaml
kubectl create -f deployments/scheduler/admission-controller-secrets.yaml -n yunikorn
kubectl create -f deployments/scheduler/admission-controller.yaml -n yunikorn