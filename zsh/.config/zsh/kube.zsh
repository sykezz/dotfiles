export KUBECONFIG="$HOME/.kube/config"

alias k="kubectl"
alias kctx="kubectl config use-context"

# Get resources
alias kg="kubectl get"
alias kgp="kubectl get pods"
alias kgs="kubectl get svc"
alias kgse="kubectl get secrets"
alias kgn="kubectl get nodes"
alias kgd="kubectl get deploy"
alias kgcm="kubectl get configmap"

# Describe
alias kd="kubectl describe"
alias kdp="kubectl describe pod"
alias kdd="kubectl describe deployment"

# Logs + Exec
alias kl="kubectl logs"
alias klf="kubectl logs -f"
alias kex="kubectl exec -it"

# Apply / Delete
alias ka="kubectl apply -f"
alias kdel="kubectl delete"
alias kdr="kubectl delete pod"

# Debug
alias ktop="kubectl top pod"
alias ktops="kubectl top pod -A"
