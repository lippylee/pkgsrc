# $NetBSD: module.mk,v 1.4 2013/09/17 12:03:09 joerg Exp $
#
# This Makefile fragment is intended to be included by packages that
# install Lua packages.

.if !defined(LUA_MODULE_MK)
LUA_MODULE_MK=	# defined

.include "../../lang/lua/version.mk"

_LUA_VERSION=	${LUA_VERSION_MAJOR}.${LUA_VERSION_MINOR}

LUA_PKGPREFIX=	lua
LUA_LDIR=	share/lua/${_LUA_VERSION}
PLIST_SUBST+=	LUA_LDIR=${LUA_LDIR}

.if defined(NO_BUILD) && empty(NO_BUILD:M[Nn][Oo])
DEPENDS+=	lua-${_LUA_VERSION}.*:../../lang/lua
.else
LUA_CDIR=	lib/lua/${_LUA_VERSION}
PLIST_SUBST+=	LUA_CDIR=${LUA_CDIR}

PRINT_PLIST_AWK+=	/^${LUA_LDIR:S|/|\\/|g}/ \
			{ gsub(/${LUA_LDIR:S|/|\\/|g}/, "$${LUA_LDIR}") }
PRINT_PLIST_AWK+=	/^${LUA_CDIR:S|/|\\/|g}/ \
			{ gsub(/${LUA_CDIR:S|/|\\/|g}/, "$${LUA_CDIR}") }

BUILDLINK_API_DEPENDS.lua+=	lua-${_LUA_VERSION}.*

.include "../../lang/lua/buildlink3.mk"
.endif

.endif  # LUA_MODULE_MK
