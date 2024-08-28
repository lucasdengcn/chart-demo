{{- define "chart-demo.configmapTemplate" -}}

apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ include "chart-demo.fullname" . }}-configmap
  namespace: {{ .Values.global.namespace }}
data:
  SV_NAME: {{ .Chart.Name | quote }}
  SV_VERSION: {{ .Chart.Version | quote }}
  SV_APP_PORT: {{ .Values.service.port | quote }}
  SV_NODE_ENV: {{ .Values.service.env | quote }}
{{- range $key, $val := .Values.envVars }}
  {{ $key }}: {{ $val | quote }}
{{- end }}

{{- end }}