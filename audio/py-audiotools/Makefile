# $NetBSD: Makefile,v 1.7 2012/10/03 22:14:00 wiz Exp $
#

DISTNAME=	audiotools-2.18
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=audiotools/2.18/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://audiotools.sourceforge.net/
COMMENT=	Collection of command line audio handling programs
LICENSE=	gnu-gpl-v2

USE_LANGUAGES=	c

REPLACE_INTERPRETER+=	python
REPLACE.python.old=	/usr/bin/python
REPLACE.python.new=	${PYTHONBIN}
REPLACE_FILES.python=	audiotools/*.py
REPLACE_FILES.python+=	audiotools/py_decoders/*.py
REPLACE_FILES.python+=	audiotools/py_encoders/*.py

REPLACE_INTERPRETER+=	bin-python
REPLACE.bin-python.old=	/usr/bin/bin
REPLACE.bin-python.new=	${PYTHONBIN}
REPLACE_FILES.bin-python=	audiotools/player.py

EGG_NAME=	Python_Audio_Tools-${PKGVERSION_NOREV}

DEPENDS+=	${PYPKGPREFIX}-urwid-[0-9]*:../../devel/py-urwid

.include "../../lang/python/distutils.mk"
.include "../../misc/libcdio/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
