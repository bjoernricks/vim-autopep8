if has("python")

python << EOF

import os
import sys
import vim

f_path = vim.eval('expand("<sfile>:p:h:h")')
sys.path.insert(0, os.path.join(f_path, 'autopep8'))
sys.path.insert(0, os.path.join(f_path, 'pep8'))

try:
    import autopep8

    def autopep8lines(lines):
        encoding = vim.eval("&fileencoding")
        tw = int(vim.eval("&textwidth"))

        args = autopep8.parse_args([""])
        args.max_line_length = tw

        orig = [line.decode(encoding) for line in lines]
        peped = autopep8.fix_lines(orig, args)

        if peped.endswith('\n'):
            peped = peped[:-1]

        if orig == peped:
            return None
        else:
            return [line.encode(encoding) for line in peped.splitlines()]

    def autopep8selection():
        range = vim.current.range

        newlines = autopep8lines(range)
        if newlines:
            range[:] = newlines

    def autopep8buffer():
        lines = vim.current.buffer[:]

        newlines = autopep8lines(lines)
        if newlines:
            vim.current.buffer[:] = newlines

except ImportError:
    vim.command('echoerr "Please install autopep8 python module."')

    def autopep8selection():
        pass

    def autopep8buffer():
        pass


EOF

endif
