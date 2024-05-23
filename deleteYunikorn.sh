kubectl delete -f deployments/scheduler/yunikorn-rbac.yaml
cd deployments/scheduler
kubectl delete configmap yunikorn-configs -n yunikorn
cd ../..
kubectl delete -f deployments/scheduler/scheduler-load.yaml -n yunikorn
kubectl delete -f deployments/scheduler/admission-controller-rbac.yaml
kubectl delete -f deployments/scheduler/admission-controller-secrets.yaml -n yunikorn
kubectl delete -f deployments/scheduler/admission-controller.yaml -n yunikorn