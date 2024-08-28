{{- define "chart-demo.serviceTemplate" -}}

apiVersion: v1
kind: Service
metadata:
  name: {{ include "chart-demo.fullname" . }}
  namespace: {{ .Values.global.namespace }}
  labels:
    {{- include "chart-demo.labels" . | nindent 4 }}
spec:
  type: {{ .Values.service.type }}
  ports:
    - port: {{ .Values.service.port }}
      targetPort: http
      protocol: TCP
      name: http
  selector:
    {{- include "chart-demo.selectorLabels" . | nindent 4 }}

{{- end }}