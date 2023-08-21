{{/*
Expand the name of the chart.
*/}}
{{- define "external-secrets.name" -}}
{{- default .Chart.Name }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "external-secrets.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "external-secrets.annotations" -}}
helm.sh/chart: {{ include "external-secrets.chart" . }}
app.kubernetes.io/app-version: {{ .Values.global.app.version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}