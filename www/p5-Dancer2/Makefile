# $NetBSD: Makefile,v 1.3 2013/09/03 09:50:39 wen Exp $

DISTNAME=	Dancer2-0.09
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/X/XS/XSAWYERX/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Dancer2/
COMMENT=	Lightweight yet powerful web application framework
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=	# empty
PERL5_PACKLIST= auto/Dancer2/.packlist

BUILD_DEPENDS+=	p5-Test-MockTime>=0:../../time/p5-Test-MockTime
BUILD_DEPENDS+=	p5-Test-TCP>=0:../../net/p5-Test-TCP
BUILD_DEPENDS+=	p5-Test-Fatal>=0:../../devel/p5-Test-Fatal

DEPENDS+=	p5-Capture-Tiny>=0.12:../../devel/p5-Capture-Tiny
DEPENDS+=	p5-Crypt-URandom>=0:../../security/p5-Crypt-URandom
DEPENDS+=	p5-Config-Any>=0:../../devel/p5-Config-Any
DEPENDS+=	p5-Digest-SHA>=0:../../security/p5-Digest-SHA
DEPENDS+=	p5-Hash-Merge-Simple>=0:../../devel/p5-Hash-Merge-Simple
DEPENDS+=	p5-HTTP-Body>=0:../../www/p5-HTTP-Body
DEPENDS+=	p5-HTTP-Date>=0:../../www/p5-HTTP-Date
DEPENDS+=	p5-HTTP-Message>=0:../../www/p5-HTTP-Message
DEPENDS+=	p5-HTTP-Server-Simple-PSGI>=0:../../www/p5-HTTP-Server-Simple-PSGI
DEPENDS+=	p5-JSON>=0:../../converters/p5-JSON
DEPENDS+=	p5-MIME-Base64>=0:../../converters/p5-MIME-Base64
DEPENDS+=	p5-Moo>=0.009014:../../devel/p5-Moo
DEPENDS+=	p5-MooX-Types-MooseLike>=0.16:../../devel/p5-MooX-Types-MooseLike
DEPENDS+=	p5-MooX-Types-MooseLike-Numeric>=0:../../devel/p5-MooX-Types-MooseLike-Numeric
DEPENDS+=	p5-Path-Class>=0:../../devel/p5-Path-Class
DEPENDS+=	p5-Plack>=0:../../www/p5-Plack
DEPENDS+=	p5-Template-Tiny>=0:../../textproc/p5-Template-Tiny
DEPENDS+=	p5-Template-Toolkit>=0:../../www/p5-Template-Toolkit
DEPENDS+=	p5-URI-Escape-XS>=0:../../www/p5-URI-Escape-XS
DEPENDS+=	p5-YAML>=0:../../textproc/p5-YAML
DEPENDS+=	p5-YAML-LibYAML>=0:../../textproc/p5-YAML-LibYAML
DEPENDS+=	p5-libwww>=0:../../www/p5-libwww

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
