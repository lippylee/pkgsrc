# $NetBSD: Makefile,v 1.9 2013/05/31 12:40:12 wiz Exp $

DISTNAME=	Data-Dumper-Concise-2.020
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Data/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Data-Dumper-Concise/
COMMENT=	Perl 5 module to dump references with concision and deparsing
LICENSE=	${PERL5_LICENSE}

# XXX recommended: Devel::ArgNames - import

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Data/Dumper/Concise/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
