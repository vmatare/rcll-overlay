# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit rpm

SVNREL="20090722svn"

DESCRIPTION="Language for developing expert systems"
HOMEPAGE="http://clipsrules.sourceforge.net/"
SRC_URI="http://ftp.halifax.rwth-aachen.de/fedora/linux/development/rawhide/source/SRPMS/c/${PF}-0.11.${SVNREL}.fc23.src.rpm"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="doc"

DEPEND="sys-libs/libtermcap-compat"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PF}.${SVNREL}"

DOCS_BASE="${WORKDIR}/${PF}.${SVNREL}-doc"
DOCS=( ${DOCS_BASE}/*.pdf ${DOCS_BASE}/html )
