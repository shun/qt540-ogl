project(qt_ogl_es3)
cmake_minimum_required(VERSION 2.8)

set(QTLIBDIR "/Volumes/DataDrive/workspace/qt/Qt5.4.0/5.4/clang_64")
set (CMAKE_PREFIX_PATH ${QTLIBDIR})

find_package(Qt5Core)

include_directories(
  ${QTLIBDIR}/include
  inc
)

link_directories(
  ${QTLIBDIR}/lib
)

link_libraries(
)

#----------------------------------------------------------------
set(OUTPUTNAME "ogl_es3")

set(SRC_FILES
  src/main.cpp
  src/openglelement.cpp
)

set(HDR_FILES
  inc/openglelement.h
)

qt5_add_resources(QRC
	${PROJECT_SOURCE_DIR}/qml/qml.qrc
)

qt5_wrap_cpp(MOC_SRC_FILES
	${HDR_FILES}
)

add_executable(
  ${OUTPUTNAME}
  ${SRC_FILES}
  ${MOC_SRC_FILES}
  ${QRC}
)

QT5_USE_MODULES(
    ${OUTPUTNAME}
	Gui
	Core
	Qml
	Quick
	Widgets
)

#target_link_libraries(
#    ${OUTPUTNAME}
#	EGL
#	GLESv2
#)

#----------------------------------------------------------------
install(
    FILES
        ${PROJECT_BINARY_DIR}/${OUTPUTNAME}
    DESTINATION
        ${CMAKE_SOURCE_DIR}/bin
    PERMISSIONS
        OWNER_READ
        OWNER_EXECUTE
        GROUP_READ
        GROUP_EXECUTE
        WORLD_READ
        WORLD_EXECUTE
)

install(
	DIRECTORY
        ${CMAKE_SOURCE_DIR}/qml
    DESTINATION
        ${CMAKE_SOURCE_DIR}/bin
)
