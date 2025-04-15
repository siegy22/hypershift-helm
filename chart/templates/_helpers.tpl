{{- define "ocp_client" -}}
{{- $imageName := .Values.hypershift.cliImage | default "registry.redhat.io/openshift4/ose-cli:latest" -}}
{{- printf "%s" $imageName -}}
{{- end -}}

{{- define "hostedClusterNamespace" -}}
{{- $hostedClusterNameSpace := .Values.hypershift.hostedClustersNamespace | default "clusters" -}}
{{- printf "%s" $hostedClusterNameSpace -}}
{{- end -}}

{{- define "clusterNamespace" -}}
{{- $hostedClusterNamespace := include "hostedClusterNamespace" .  -}}
{{- $metadataName := .Values.metadata.name -}}
{{- printf "%s-%s" $hostedClusterNamespace $metadataName -}}
{{- end -}}
