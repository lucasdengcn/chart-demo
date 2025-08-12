{{- define "chart-tpl.serviceAccountTemplate" -}}

{{- if .Values.serviceAccount.create -}}
apiVersion: v1
kind: ServiceAccount
metadata:
  name: {{ include "chart-crd.serviceAccountName" . }}
  namespace: {{ .Values.global.namespace }}
  labels:
    {{- include "chart-crd.labels" . | nindent 4 }}
  {{- with .Values.serviceAccount.annotations }}
  annotations:
    {{- toYaml . | nindent 4 }}
  {{- end }}
automountServiceAccountToken: {{ .Values.serviceAccount.automount }}
{{- end }}

{{- end }}