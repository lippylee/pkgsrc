# $NetBSD: Makefile,v 1.1 2012/11/29 09:07:20 ryoon Exp $
#

GST_PLUGINS1_NAME=	mms
GST_PLUGINS1_FLAGS=	libmms
GST_PLUGINS1_DIRS=	ext/libmms

.include "../../multimedia/gst-plugins1-bad/Makefile.common"

BUILDLINK_API_DEPENDS.libmms+=	libmms>=0.4
.include "../../net/libmms/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
