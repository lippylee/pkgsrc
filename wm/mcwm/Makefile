# $NetBSD$
#

DISTNAME=	mcwm-20130209-2
CATEGORIES=	wm
MASTER_SITES=	http://www.hack.org/mc/hacks/mcwm/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	youri.mout@gmail.com
HOMEPAGE=	http://www.hack.org/mc/hacks/mcwm/
COMMENT=	Window manager for the X Window System written entirely with XCB
LICENSE=	isc

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mcwm ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/mcwm.man \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/mcwm.1

.include "../../x11/libxcb/buildlink3.mk"
.include "../../x11/xcb-util/buildlink3.mk"
.include "../../x11/xcb-util-keysyms/buildlink3.mk"
.include "../../x11/xcb-util-wm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
