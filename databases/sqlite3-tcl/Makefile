# $NetBSD: Makefile,v 1.50 2013/09/08 06:28:58 adam Exp $

DISTNAME=	sqlite-autoconf-3080002
PKGNAME=	sqlite3-tcl-3.8.0.2
CATEGORIES=	databases
MASTER_SITES=	http://www.hwaci.com/sw/sqlite/2013/ \
		http://www.sqlite.org/2013/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.sqlite.org/
COMMENT=	SQL Database Engine in a C Library (TCL extension)
LICENSE=	public-domain

WRKSRC=		${WRKDIR}/${DISTNAME}/tea

USE_TOOLS+=		gmake
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-tcl=${BUILDLINK_PREFIX.tcl}/lib

PLIST_SUBST+=		TCL_TRIM_DOTS=${PKGVERSION_NOREV:S/.//g}

BUILDLINK_API_DEPENDS.sqlite3+=	sqlite3>=3.6.10

.include "../../databases/sqlite3/buildlink3.mk"
.include "../../lang/tcl/buildlink3.mk"
.include "../../mk/readline.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
