{{- define "chart-tpl.configmapTemplate" -}}

apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ include "chart-crd.configMapName" . }}
  namespace: {{ .Values.global.namespace }}
data:
  SV_NAME: {{ .Chart.Name | quote }}
  SV_VERSION: {{ .Chart.Version | quote }}
  SV_APP_PORT: {{ .Values.service.port | quote }}
  SV_NODE_ENV: {{ .Values.service.env | quote }}

{{- $blueConfig := .Values.config }}
{{- $name := include "chart-crd.name" .}}

{{- $greenOverrides := .Values.greenConfig }}
{{- /* merge $greenOverrides onto $blueConfig */ -}}
{{- $greenConfig := merge $blueConfig $greenOverrides }}

{{- range $key, $val := $greenConfig }}
  {{ $key }}: {{ $val | quote }}
{{- end }}

{{- end }}