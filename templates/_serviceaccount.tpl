{{- define "chart-demo.serviceAccountTemplate" -}}

{{- if .Values.serviceAccount.create -}}
apiVersion: v1
kind: ServiceAccount
metadata:
  name: {{ include "chart-demo.serviceAccountName" . }}
  namespace: {{ .Values.global.namespace }}
  labels:
    {{- include "chart-demo.labels" . | nindent 4 }}
  {{- with .Values.serviceAccount.annotations }}
  annotations:
    {{- toYaml . | nindent 4 }}
  {{- end }}
automountServiceAccountToken: {{ .Values.serviceAccount.automount }}
{{- end }}

{{- end }}