# $NetBSD: Makefile,v 1.13 2013/06/04 22:16:19 tron Exp $
#

DISTNAME=	gource-0.38
PKGREVISION=	5
CATEGORIES=	graphics
MASTER_SITES=	http://gource.googlecode.com/files/

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://code.google.com/p/gource/
COMMENT=	Software version control visualization
LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++

CONFIGURE_ARGS=	--with-boost=${BUILDLINK_PREFIX.boost-libs}

.include "../../devel/SDL/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../graphics/SDL_image/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/glew/buildlink3.mk"
.include "../../graphics/glm/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
