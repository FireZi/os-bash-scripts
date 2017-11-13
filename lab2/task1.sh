#!/bin/bash

touch errors.log
grep -r -E -h "ACPI:" /var/log/ > errors.log
grep -E -h "\/[[:alnum:]]\.[[:alpha:]]" ~/study/sem3/os/lab2/errors.log