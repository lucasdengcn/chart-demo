{{- define "chart-tpl.serviceTemplate" -}}

apiVersion: v1
kind: Service
metadata:
  name: {{ include "chart-crd.serviceName" . }}
  namespace: {{ .Values.global.namespace }}
  labels:
    {{- include "chart-crd.labels" . | nindent 4 }}
spec:
  type: {{ .Values.service.type }}
  ports:
    - port: {{ .Values.service.port }}
      targetPort: http
      protocol: TCP
      name: http
  selector:
    {{- include "chart-crd.selectorLabels" . | nindent 4 }}

{{- end }}