source /root/php-5.6.31/.gdbinit

b main
commands
silent
set cli_sapi_module.name="cgi-fcgi"
continue
end

b compile_string
commands
silent
printf "--------------------------------------------------------------------------------\n"
printf "callback:\n\n"
zbacktrace
printf "--------------------------------------------------------------------------------\n"
printf "source code:\n\n"
printf "%s\n", ((*(zval *)$rdi).value.str).val
continue
end

r your_file_here 2>&1 > /dev/null

printf "--------------------------------------------------------------------------------\n"
quit
