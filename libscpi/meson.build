cc = meson.get_compiler('c')
depm = cc.find_library('m', required : false)

dep = [depm]
src = ['src/error.c',
       'src/fifo.c',
       'src/ieee488.c',
       'src/minimal.c',
       'src/parser.c',
       'src/units.c',
       'src/utils.c',
       'src/lexer.c',
       'src/expression.c']

inc = include_directories(['inc', 'src'])

libscpi_shared = shared_library('scpi', src, dependencies : dep, include_directories : inc,
                                version : '2.1.0', soversion : '0',
                                install : true)
libscpi_static = static_library('scpi', src, dependencies : dep, include_directories : inc,
                                install : true)

libscpi_header = ['inc/scpi/scpi.h',
                  'inc/scpi/cc.h',
                  'inc/scpi/config.h',
                  'inc/scpi/constants.h',
                  'inc/scpi/error.h',
                  'inc/scpi/expression.h',
                  'inc/scpi/ieee488.h',
                  'inc/scpi/minimal.h',
                  'inc/scpi/scpi.h',
                  'inc/scpi/units.h',
                  'inc/scpi/utils.h',
                  'inc/scpi/parser.h',
                  'inc/scpi/types.h']
install_headers(libscpi_header, subdir : 'scpi')

# this is only usefull for installing on a FAT partition
# TODO: it should be removed, if/when possible
meson.add_install_script('install_vfat.sh')

incscpi = include_directories(['inc'])
depscpi_shared = declare_dependency(link_with : libscpi_shared, include_directories : incscpi)
depscpi_statis = declare_dependency(link_with : libscpi_static, include_directories : incscpi)
