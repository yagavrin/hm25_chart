{{- define "flask-mysql-app.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "flask-mysql-app.flaskApp.fullname" -}}
{{- printf "%s-flask-app" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "flask-mysql-app.mysql.fullname" -}}
{{- printf "%s-mysql" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}