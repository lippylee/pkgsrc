# $NetBSD: Makefile,v 1.36 2013/09/02 19:51:05 adam Exp $

DISTNAME=	puzzles-r10035
PKGNAME=	${DISTNAME:S/-r/-/}
PKGREVISION=	1
CATEGORIES=	games
# distfile changes daily
MASTER_SITES=	# http://www.chiark.greenend.org.uk/~sgtatham/puzzles/

MAINTAINER=	wiz@NetBSD.org
HOMEPAGE=	http://www.chiark.greenend.org.uk/~sgtatham/puzzles/
COMMENT=	Collection of small one-player puzzle games by Simon Tatham
LICENSE=	mit

INSTALLATION_DIRS=	bin share/doc/puzzles

USE_TOOLS+=	gmake pkg-config

BUILDLINK_TRANSFORM+=	rm:-Werror
MAKE_FLAGS=	prefix=${PREFIX}
MAKE_FLAGS=	gamesdir=${PREFIX}/bin
MAKE_FILE=	Makefile.gtk
CFLAGS+=	-DREVISION=${DISTNAME:S/puzzles-r//}

post-install:
	${INSTALL_DATA} ${WRKSRC}/puzzles.txt \
		${DESTDIR}${PREFIX}/share/doc/puzzles

.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
