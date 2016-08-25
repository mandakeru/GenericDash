# MASKED INPUT
# =================================================================
# Require Masked Input
# http://digitalbush.com/projects/masked-input-plugin/
# =================================================================
# Initialize Masked Inputs
# a - Represents an alpha character (A-Z,a-z)
# 9 - Represents a numeric character (0-9)
# * - Represents an alphanumeric character (A-Z,a-z,0-9)

$(document).ready ->
  $('.msk-date').mask '99/99/9999'
  $('.msk-date2').mask '99-99-9999'
  $('.msk-phone').mask '(99) ?9999-9999'
  $('.msk-phone-home').mask '(99) 9999-9999'
  $('.msk-cep').mask '99999-999'
  $('#customer_cpf').mask '999.999.999-99'
  $('.msk-cnpj').mask '99.999.999/9999-99'
  return

