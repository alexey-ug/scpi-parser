#!/bin/sh

LIBDIR=`dpkg-architecture -qDEB_HOST_MULTIARCH`

cp --remove-destination "${DESTDIR}/${MESON_INSTALL_PREFIX}/lib/${LIBDIR}/libscpi.so.2.1.0" "${DESTDIR}/${MESON_INSTALL_PREFIX}/lib/${LIBDIR}/libscpi.so.0"
cp --remove-destination "${DESTDIR}/${MESON_INSTALL_PREFIX}/lib/${LIBDIR}/libscpi.so.2.1.0" "${DESTDIR}/${MESON_INSTALL_PREFIX}/lib/${LIBDIR}/libscpi.so"
