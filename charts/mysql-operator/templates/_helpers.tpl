{{- define "operator.tag" -}}
{{- default .Values.tag .Values.image.tag -}}
{{- end -}}


{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "mysql-operator.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

