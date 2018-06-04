# kubectl completion
KUBECTL_COMPLETION="$HOME/.config/bash/kubectl-completion.bash"
if [ -s $KUBECTL_COMPLETION ]; then
    . $KUBECTL_COMPLETION
else
    kubectl completion bash > $KUBECTL_COMPLETION && . $KUBECTL_COMPLETION 
fi

# minikube completion
MINIKUBE_COMPLETION="$HOME/.config/bash/minikube-completion.bash"
if [ -s $MINIKUBE_COMPLETION ]; then
    . $MINIKUBE_COMPLETION
else
    minikube completion bash > $MINIKUBE_COMPLETION && . $MINIKUBE_COMPLETION 
fi
