{{- define "operator.tag" -}}
{{- default .Values.tag .Values.image.operator.operator -}}
{{- end -}}

{{- define "apiserver.tag" -}}
{{- default .Values.tag .Values.image.operator.apiserver -}}
{{- end -}}


{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "mysql-operator.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

