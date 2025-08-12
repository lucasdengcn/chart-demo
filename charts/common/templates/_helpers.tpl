{{/*
Expand the name of the chart.
*/}}
{{- define "chart-crd.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "chart-crd.chart" -}}
{{- printf "%s-%s" .Release.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "chart-crd.labels" -}}
helm.sh/chart: {{ include "chart-crd.chart" . }}
{{ include "chart-crd.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "chart-crd.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}
app.kubernetes.io/instance: {{ include "chart-crd.instanceName" . }}
{{- end }}

#######################

{{- define "chart-crd.instanceName" -}}

{{- printf "%s-%s-%s" .Release.Name .Values.global.env .Chart.AppVersion | replace "+" "-" | trunc 63 | trimSuffix "-" }}

{{- end }}

{{/*
Create the name of the ServiceAccount
*/}}
{{- define "chart-crd.serviceAccountName" -}}

{{- $name := printf "%s-%s-sa" .Release.Name .Values.global.env | replace "+" "-" | trunc 63 | trimSuffix "-" }}

{{- default $name .Values.serviceAccount.name | replace "+" "-" | trunc 63 | trimSuffix "-" }}

{{- end }}


{{/*
Create the name of the ConfigMap
*/}}
{{- define "chart-crd.configMapName" -}}

{{- printf "%s-%s-config" .Release.Name .Values.global.env | replace "+" "_" | trunc 63 | trimSuffix "-" }}

{{- end }}


{{/*
Create the name of the Deployment
*/}}
{{- define "chart-crd.deployName" -}}

{{- printf "%s-%s-deploy" .Release.Name .Values.global.env | replace "+" "-" | trunc 63 | trimSuffix "-" }}

{{- end }}

{{/*
Create the name of the Service
*/}}
{{- define "chart-crd.serviceName" -}}

{{- printf "%s-%s-svc" .Release.Name .Values.global.env | replace "+" "-" | trunc 63 | trimSuffix "-" }}

{{- end }}

{{/*
Create the name of the Ingress
*/}}
{{- define "chart-crd.ingressName" -}}

{{- printf "%s-%s-ingress" .Release.Name .Values.global.env | replace "+" "-" | trunc 63 | trimSuffix "-" }}

{{- end }}


{{/*
Create the name of the HPA
*/}}
{{- define "chart-crd.hpaName" -}}

{{- printf "%s-%s-hpa" .Release.Name .Values.global.env | replace "+" "-" | trunc 63 | trimSuffix "-" }}

{{- end }}


{{/*
Create the name of the Secrets
*/}}
{{- define "chart-crd.secretsName" -}}

{{- printf "%s-%s-secrets" .Release.Name .Values.global.env | replace "+" "-" | trunc 63 | trimSuffix "-" }}

{{- end }}