function print_matrix(matrix_to_print)
    fprintf([repmat('%f\t', 1, size(matrix_to_print, 1)) '\n'], matrix_to_print);
end