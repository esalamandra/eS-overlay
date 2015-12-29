# Distributed under the terms of the GNU General Public License v2

EAPI=5


GENTOO_DEPEND_ON_PERL="no"

declare -A mod{_a,_pn,_pv,_lic,_sha,_p,_uri,_wd,_doc}
declare -A mods

# encrypted_session depend on ndk.
# place ndk before modules that depend on it.

# Nginx Development Kit (NDK) (https://github.com/simpl/ngx_devel_kit)
mod_a["ndk"]="simpl"
mod_pn["ndk"]="ngx_devel_kit"
mod_pv["ndk"]="0.2.19"
mod_lic["ndk"]="BSD"
mod_p["ndk"]="${mod_pn["ndk"]}-${mod_pv["ndk"]}"
mod_uri["ndk"]="https://github.com/${mod_a["ndk"]}/${mod_pn["ndk"]}/archive/v${mod_pv["ndk"]}.tar.gz"
mod_wd["ndk"]="${WORKDIR}/${mod_p["ndk"]}"
mod_doc["ndk"]="README README_AUTO_LIB"

# Encrypted Session (https://github.com/openresty/encrypted-session-nginx-module)
mod_a["encrypted_session"]="openresty"
mod_pn["encrypted_session"]="encrypted-session-nginx-module"
mod_pv["encrypted_session"]="0.04"
mod_sha["encrypted_session"]="bc73c6721073a7a24606b22d5e21b2b366b58149"
mod_lic["encrypted_session"]="BSD-2"
mod_p["encrypted_session"]="${mod_pn["encrypted_session"]}-${mod_sha["encrypted_session"]}"
mod_uri["encrypted_session"]="https://github.com/${mod_a["encrypted_session"]}/${mod_pn["encrypted_session"]}/archive/${mod_sha["encrypted_session"]}.tar.gz"
mod_wd["encrypted_session"]="${WORKDIR}/${mod_p["encrypted_session"]}"
#mod_doc["encrypted_session"]="README"

# Lua (https://github.com/openresty/lua-nginx-module)
mod_a["lua"]="openresty"
mod_pn["lua"]="lua-nginx-module"
mod_pv["lua"]="0.9.19"
mod_sha["lua"]="7b1ff62c2126b573ce3e1069639bd82922875801"
mod_lic["lua"]="BSD-2"
mod_p["lua"]="${mod_pn["lua"]}-${mod_sha["lua"]}"
mod_uri["lua"]="https://github.com/${mod_a["lua"]}/${mod_pn["lua"]}/archive/${mod_sha["lua"]}.tar.gz"
mod_wd["lua"]="${WORKDIR}/${mod_p["lua"]}"
mod_doc["lua"]="README.markdown Changes"

# Echo (https://github.com/openresty/echo-nginx-module)
mod_a["echo"]="openresty"
mod_pn["echo"]="echo-nginx-module"
mod_pv["echo"]="0.58"
mod_sha["echo"]="b2052b826e97b5cf0a3a85263fcd22546ff19d75"
mod_lic["echo"]="BSD-2"
mod_p["echo"]="${mod_pn["echo"]}-${mod_sha["echo"]}"
mod_uri["echo"]="https://github.com/${mod_a["echo"]}/${mod_pn["echo"]}/archive/${mod_sha["echo"]}.tar.gz"
mod_wd["echo"]="${WORKDIR}/${mod_p["echo"]}"
mod_doc["echo"]="README.markdown"

# Array var (https://github.com/openresty/array-var-nginx-module)
# mod_a["array-var"]="openresty"
# mod_pn["array-var"]="array-var-nginx-module"
# mod_pv["array-var"]="0.04"
# mod_sha["array-var"]="735e74a524334b3d2647c2818710a0a80d35c927"
# mod_lic["array-var"]="BSD-2"
# mod_p["array-var"]="${mod_pn["array-var"]}-${mod_sha["array-var"]}"
# mod_uri["array-var"]="https://github.com/${mod_a["array-var"]}/${mod_pn["array-var"]}/archive/${mod_sha["array-var"]}.tar.gz"
# mod_wd["array-var"]="${WORKDIR}/${mod_p["array-var"]}"
# mod_doc["array-var"]="README.markdown"

# Drizzle (https://github.com/openresty/drizzle-nginx-module)
# mod_a["drizzle"]="openresty"
# mod_pn["drizzle"]="drizzle-nginx-module"
# mod_pv["drizzle"]=""
# mod_sha["drizzle"]="ced57235d845dc36603fbf2721c2d3bc795aecb4"
# mod_lic["drizzle"]="BSD-2"
# mod_p["drizzle"]="${mod_pn["drizzle"]}-${mod_sha["drizzle"]}"
# mod_uri["drizzle"]="https://github.com/${mod_a["drizzle"]}/${mod_pn["drizzle"]}/archive/${mod_sha["drizzle"]}.tar.gz"
# mod_wd["drizzle"]="${WORKDIR}/${mod_p["drizzle"]}"
# mod_doc["drizzle"]="README.markdown"

# Stream-echo (https://github.com/openresty/stream-echo-nginx-module) 
# mod_a["stream-echo"]="openresty"
# mod_pn["stream-echo"]="stream-echo-nginx-module"
# mod_pv["stream-echo"]=""
# mod_sha["stream-echo"]="a3a518c66dcbde1f856dde48dc8f5a43b172a51f"
# mod_lic["stream-echo"]="BSD-2"
# mod_p["stream-echo"]="${mod_pn["stream-echo"]}-${mod_sha["stream-echo"]}"
# mod_uri["stream-echo"]="https://github.com/${mod_a["stream-echo"]}/${mod_pn["stream-echo"]}/archive/${mod_sha["stream-echo"]}.tar.gz"
# mod_wd["stream-echo"]="${WORKDIR}/${mod_p["stream-echo"]}"
# mod_doc["stream-echo"]="README.markdown"

# encrypted-session-nginx-module (https://github.com/openresty/encrypted-session-nginx-module)
# mod_a["encrypted-session"]="openresty"
# mod_pn["encrypted-session"]="encrypted-session-nginx-module"
# mod_pv[""]=""
# mod_sha["encrypted-session"]="a692cef53c7b8b882229e5dc4d262de2f85fffdc"
# mod_lic["encrypted-session"]="BSD-2"
# mod_p["encrypted-session"]="${mod_pn["encrypted-session"]}-${mod_sha["encrypted-session"]}"
# mod_uri["encrypted-session"]="https://github.com/${mod_a["encrypted-session"]}/${mod_pn["encrypted-session"]}/archive/${mod_sha["encrypted-session"]}.tar.gz"
# mod_wd["encrypted-session"]="${WORKDIR}/${mod_p["encrypted-session"]}"
# mod_doc["encrypted-session"]="README.markdown"

# Lua-upstream (https://github.com/openresty/lua-upstream-nginx-module) 
# mod_a["echo"]="openresty"
# mod_pn[""]="lua-upstream-nginx-module"
# mod_pv[""]=""
# mod_sha[""]="b25d27ca7a7cc3d3b21ef2c8d21d585ad85c868e"
# mod_lic[""]="BSD-2"
# mod_p[""]="${mod_pn[""]}-${mod_sha[""]}"
# mod_uri[""]="https://github.com/${mod_a[""]}/${mod_pn[""]}/archive/${mod_sha[""]}.tar.gz"
# mod_wd[""]="${WORKDIR}/${mod_p[""]}"
# mod_doc[""]="README.markdown"

# Rds-csv (https://github.com/openresty/rds-csv-nginx-module) 
# mod_a["rds-csv"]="openresty"
# mod_pn["rds-csv"]="rds-csv-nginx-module""
# mod_pv[""]=""
# mod_sha["rds-csv"]="f243822eae5f883e76dcbb5fdc6fc77cb4900e87"
# mod_lic["rds-csv"]="BSD-2"
# mod_p["rds-csv"]="${mod_pn["rds-csv"]}-${mod_sha["rds-csv"]}"
# mod_uri["rds-csv"]="https://github.com/${mod_a["rds-csv"]}/${mod_pn["rds-csv"]}/archive/${mod_sha["rds-csv"]}.tar.gz"
# mod_wd["rds-csv"]="${WORKDIR}/${mod_p["rds-csv"]}"
# mod_doc["rds-csv"]="README.markdown"

# Rds-json (https://github.com/openresty/rds-json-nginx-module) 
# mod_a["rds-json"]="openresty"
# mod_pn["rds-json"]="rds-json-nginx-module"
# mod_pv[""]=""
# mod_sha["rds-json"]="3c79c051ad1e2b984ea31a9e5a09a69a6db995fe"
# mod_lic["rds-json"]="BSD-2"
# mod_p["rds-json"]="${mod_pn["rds-json"]}-${mod_sha["rds-json"]}"
# mod_uri["rds-json"]="https://github.com/${mod_a["rds-json"]}/${mod_pn["rds-json"]}/archive/${mod_sha["rds-json"]}.tar.gz"
# mod_wd["rds-json"]="${WORKDIR}/${mod_p["rds-json"]}"
# mod_doc["rds-json"]="README.markdown"


# Redis2 (https://github.com/openresty/redis2-nginx-module)
# mod_a["redis2"]="openresty"
# mod_pn["redis2"]="redis2-nginx-module"
# mod_pv[""]=""
# mod_sha["redis2"]="335a604f44582ab69923a34f21ffd0c9395c2e60"
# mod_lic["redis2"]="BSD-2"
# mod_p["redis2"]="${mod_pn["redis2"]}-${mod_sha["redis2"]}"
# mod_uri["redis2"]="https://github.com/${mod_a["redis2"]}/${mod_pn["redis2"]}/archive/${mod_sha["redis2"]}.tar.gz"
# mod_wd["redis2"]="${WORKDIR}/${mod_p["redis2"]}"
# mod_doc["redis2"]="README.markdown"

# Replace-filter (https://github.com/openresty/replace-filter-nginx-module)
# mod_a["replace-filter"]="openresty"
# mod_pn["replace-filter"]"="replace-filter-nginx-module"
# mod_pv[""]=""
# mod_sha["replace-filter"]="4b7758f904eb1e49fc7f4b351ac9794d1722657c"
# mod_lic["replace-filter"]="BSD-2"
# mod_p["replace-filter"]="${mod_pn["replace-filter"]}-${mod_sha["replace-filter"]}"
# mod_uri["replace-filter"]="https://github.com/${mod_a["replace-filter"]}/${mod_pn["replace-filter"]}/archive/${mod_sha["replace-filter"]}.tar.gz"
# mod_wd["replace-filter"]="${WORKDIR}/${mod_p["replace-filter"]}"
# mod_doc["replace-filter"]="README.markdown"

# Set-misc (https://github.com/openresty/set-misc-nginx-module)
# mod_a["set-misc"]="openresty"
# mod_pn["set-misc"]="set-misc-nginx-module"
# mod_pv[""]=""
# mod_sha["set-misc"]="26572f6c38b62e94af41f0d50e7f373186e8da9b"
# mod_lic["set-misc"]="BSD-2"
# mod_p["set-misc"]="${mod_pn["set-misc"]}-${mod_sha["set-misc"]}"
# mod_uri["set-misc"]="https://github.com/${mod_a["set-misc"]}/${mod_pn["set-misc"]}/archive/${mod_sha["set-misc"]}.tar.gz"
# mod_wd["set-misc"]="${WORKDIR}/${mod_p["set-misc"]}"
# mod_doc["set-misc"]="README.markdown"

# Srcache (https://github.com/openresty/srcache-nginx-module)
# mod_a["srcache"]="openresty"
# mod_pn["srcache"]="srcache-nginx-module"
# mod_pv[""]=""
# mod_sha["srcache"]="e2695574c9767eb3e4bdca1714e1523b4846d89c"
# mod_lic["srcache"]="BSD-2"
# mod_p["srcache"]="${mod_pn["srcache"]}-${mod_sha["srcache"]}"
# mod_uri["srcache"]="https://github.com/${mod_a["srcache"]}/${mod_pn["srcache"]}/archive/${mod_sha["srcache"]}.tar.gz"
# mod_wd["srcache"]="${WORKDIR}/${mod_p["srcache"]}"
# mod_doc["srcache"]="README.markdown"

# XSS (https://github.com/openresty/xss-nginx-module)
# mod_a["xss"]="openresty"
# mod_pn["xss"]="xss-nginx-module"
# mod_pv[""]=""
# mod_sha["xss"]="617bb5f0deeaa42235bf2544889004de68618701"
# mod_lic["xss"]="BSD-2"
# mod_p["xss"]="${mod_pn["xss"]}-${mod_sha["xss"]}"
# mod_uri["xss"]="https://github.com/${mod_a["xss"]}/${mod_pn["xss"]}/archive/${mod_sha["xss"]}.tar.gz"
# mod_wd["xss"]="${WORKDIR}/${mod_p["xss"]}"
# mod_doc["xss"]="README.markdown"

# Fancy Index (https://github.com/aperezdc/ngx-fancyindex)
mod_a["fancyindex"]="aperezdc"
mod_pn["fancyindex"]="ngx-fancyindex"
mod_pv["fancyindex"]="0.3.5"
mod_lic["fancyindex"]="BSD-2"
mod_p["fancyindex"]="${mod_pn["fancyindex"]}-${mod_pv["fancyindex"]}"
mod_uri["fancyindex"]="https://github.com/${mod_a["fancyindex"]}/${mod_pn["fancyindex"]}/archive/v${mod_pv["fancyindex"]}.tar.gz"
mod_wd["fancyindex"]="${WORKDIR}/${mod_p["fancyindex"]}"
mod_doc["fancyindex"]="README.rst HACKING.md CHANGELOG.md"

# # MogileFS Client (http://www.grid.net.ru/nginx/mogilefs.en.html)
# mod_a["mogilefs"]="vkholodkov"
# mod_pn["mogilefs"]="nginx-mogilefs-module"
# mod_sha["mogilefs"]="020937ff4624fc31928adb51a5c43753bf256b34"
# mod_lic["mogilefs"]="BSD"
# mod_p["mogilefs"]="${mod_pn["mogilefs"]}-${mod_sha["mogilefs"]}"
# mod_uri["mogilefs"]="https://github.com/${mod_a["mogilefs"]}/${mod_pn["mogilefs"]}/archive/${mod_sha["mogilefs"]}.tar.gz"
# mod_wd["mogilefs"]="${WORKDIR}/${mod_p["mogilefs"]}"
# mod_doc["mogilefs"]="README Changelog"

# Phusion Passenger (https://github.com/phusion/passenger)
mod_a["passenger"]="phusion"
mod_pn["passenger"]="passenger"
mod_pv["passenger"]="stable-5.0"
mod_lic["passenger"]="MIT"
mod_p["passenger"]="${mod_pn["passenger"]}-${mod_pv["passenger"]}"
mod_uri["passenger"]="https://github.com/${mod_a["passenger"]}/${mod_pn["passenger"]}/archive/${mod_pv["passenger"]}.tar.gz"
mod_wd["passenger"]="${WORKDIR}/${mod_p["passenger"]}"
mod_doc["passenger"]="README.md CHANGELOG"

# Upload Progress (https://github.com/masterzen/nginx-upload-progress-module)
mod_a["upload_progress"]="masterzen"
mod_pn["upload_progress"]="nginx-upload-progress-module"
mod_pv["upload_progress"]="0.9.1"
mod_lic["upload_progress"]="BSD-2"
mod_p["upload_progress"]="${mod_pn["upload_progress"]}-${mod_pv["upload_progress"]}"
mod_uri["upload_progress"]="https://github.com/${mod_a["upload_progress"]}/${mod_pn["upload_progress"]}/archive/v${mod_pv["upload_progress"]}.tar.gz"
mod_wd["upload_progress"]="${WORKDIR}/${mod_p["upload_progress"]}"
mod_doc["upload_progress"]="README CHANGES"

# Headers More (http://github.com/agentzh/headers-more-nginx-module)
mod_a["headers_more"]="agentzh"
mod_pn["headers_more"]="headers-more-nginx-module"
mod_pv["headers_more"]="0.28"
mod_lic["headers_more"]="BSD"
mod_p["headers_more"]="${mod_pn["headers_more"]}-${mod_pv["headers_more"]}"
mod_uri["headers_more"]="https://github.com/${mod_a["headers_more"]}/${mod_pn["headers_more"]}/archive/v${mod_pv["headers_more"]}.tar.gz"
mod_wd["headers_more"]="${WORKDIR}/${mod_p["headers_more"]}"
mod_doc["headers_more"]="README.markdown"

# Push (http://pushmodule.slact.net)
mod_a["push"]="slact"
mod_pn["push"]="nchan"
mod_pv["push"]="0.931"
mod_sha["push"]="f0efe980bfb072265fb4333183e1106d8df23851"
mod_lic["push"]="MIT"
mod_p["push"]="${mod_pn["push"]}-${mod_sha["push"]}"
mod_uri["push"]="https://github.com/${mod_a["push"]}/${mod_pn["push"]}/archive/${mod_sha["push"]}.tar.gz"
mod_wd["push"]="${WORKDIR}/${mod_p["push"]}"

# Cache Purge (http://labs.frickle.com/nginx_ngx_cache_purge)
mod_a["cache_purge"]="FRiCKLE"
mod_pn["cache_purge"]="ngx_cache_purge"
mod_pv["cache_purge"]="2.3"
mod_lic["cache_purge"]="BSD-2"
mod_p["cache_purge"]="${mod_pn["cache_purge"]}-${mod_pv["cache_purge"]}"
mod_uri["cache_purge"]="https://github.com/${mod_a["cache_purge"]}/${mod_pn["cache_purge"]}/archive/${mod_pv["cache_purge"]}.tar.gz"
mod_wd["cache_purge"]="${WORKDIR}/${mod_p["cache_purge"]}"
mod_doc["cache_purge"]="README.md CHANGES TODO.md"

# SlowFS Cache (http://labs.frickle.com/nginx_ngx_slowfs_cache)
mod_a["slowfs_cache"]="FRiCKLE"
mod_pn["slowfs_cache"]="ngx_slowfs_cache"
mod_pv["slowfs_cache"]="1.10"
mod_lic["slowfs_cache"]="BSD-2"
mod_p["slowfs_cache"]="${mod_pn["slowfs_cache"]}-${mod_pv["slowfs_cache"]}"
mod_uri["slowfs_cache"]="https://github.com/${mod_a["slowfs_cache"]}/${mod_pn["slowfs_cache"]}/archive/${mod_pv["slowfs_cache"]}.tar.gz"
mod_wd["slowfs_cache"]="${WORKDIR}/${mod_p["slowfs_cache"]}"
mod_doc["slowfs_cache"]="README.md CHANGES"


# Auth PAM (http://web.iti.upv.es/~sto/nginx)
mod_a["auth_pam"]="stogh"
mod_pn["auth_pam"]="ngx_http_auth_pam_module"
mod_pv["auth_pam"]="1.4"
mod_lic["auth_pam"]="BSD-2"
mod_p["auth_pam"]="${mod_pn["auth_pam"]}-${mod_pv["auth_pam"]}"
mod_uri["auth_pam"]="https://github.com/${mod_a["auth_pam"]}/${mod_pn["auth_pam"]}/archive/v${mod_pv["auth_pam"]}.tar.gz"
mod_wd["auth_pam"]="${WORKDIR}/${mod_p["auth_pam"]}"
mod_doc["auth_pam"]="README.md ChangeLog"

# Upstream Check (https://github.com/yaoweibin/nginx_upstream_check_module)
mod_a["upstream_check"]="yaoweibin"
mod_pn["upstream_check"]="nginx_upstream_check_module"
mod_pv["upstream_check"]="0.3.0"
mod_sha["upstream_check"]="10782eaff51872a8f44e65eed89bbe286004bcb1"
mod_lic["upstream_check"]="BSD-2"
mod_p["upstream_check"]="${mod_pn["upstream_check"]}-${mod_sha["upstream_check"]}"
mod_uri["upstream_check"]="https://github.com/${mod_a["upstream_check"]}/${mod_pn["upstream_check"]}/archive/${mod_sha["upstream_check"]}.tar.gz"
mod_wd["upstream_check"]="${WORKDIR}/${mod_p["upstream_check"]}"
mod_doc["upstream_check"]="README CHANGES"

# Metrics (https://github.com/zenops/ngx_metrics)
mod_a["metrics"]="zenops"
mod_pn["metrics"]="ngx_metrics"
mod_pv["metrics"]="0.1.1"
mod_lic["metrics"]="BSD-2"
mod_p["metrics"]="${mod_pn["metrics"]}-${mod_pv["metrics"]}"
mod_uri["metrics"]="https://github.com/${mod_a["metrics"]}/${mod_pn["metrics"]}/archive/v${mod_pv["metrics"]}.tar.gz"
mod_wd["metrics"]="${WORKDIR}/${mod_p["metrics"]}"
mod_doc["metrics"]="README.md"

# NAXSI (https://github.com/nbs-system/naxsi)
mod_a["naxsi"]="nbs-system"
mod_pn["naxsi"]="naxsi"
mod_pv["naxsi"]="0.54"
mod_lic["naxsi"]="GPL-2+"
mod_p["naxsi"]="${mod_pn["naxsi"]}-${mod_pv["naxsi"]}"
mod_uri["naxsi"]="https://github.com/${mod_a["naxsi"]}/${mod_pn["naxsi"]}/archive/${mod_pv["naxsi"]}.tar.gz"
mod_wd["naxsi"]="${WORKDIR}/${mod_p["naxsi"]}/naxsi_src"
mod_doc["naxsi"]="README.md"

# RTMP (http://github.com/arut/nginx-rtmp-module)
mod_a["rtmp"]="arut"
mod_pn["rtmp"]="nginx-rtmp-module"
mod_pv["rtmp"]="1.1.7"
mod_lic["rtmp"]="BSD-2"
mod_p["rtmp"]="${mod_pn["rtmp"]}-${mod_pv["rtmp"]}"
mod_uri["rtmp"]="https://github.com/${mod_a["rtmp"]}/${mod_pn["rtmp"]}/archive/v${mod_pv["rtmp"]}.tar.gz"
mod_wd["rtmp"]="${WORKDIR}/${mod_p["rtmp"]}"
mod_doc["rtmp"]="README.md AUTHORS"

# Dav Ext (https://github.com/arut/nginx-dav-ext-module)
mod_a["dav_ext"]="arut"
mod_pn["dav_ext"]="nginx-dav-ext-module"
mod_pv["dav_ext"]="0.0.3"
mod_lic["dav_ext"]="BSD-2"
mod_p["dav_ext"]="${mod_pn["dav_ext"]}-${mod_pv["dav_ext"]}"
mod_uri["dav_ext"]="https://github.com/${mod_a["dav_ext"]}/${mod_pn["dav_ext"]}/archive/v${mod_pv["dav_ext"]}.tar.gz"
mod_wd["dav_ext"]="${WORKDIR}/${mod_p["dav_ext"]}"
mod_doc["dav_ext"]="README"

# Accept Language (https://github.com/giom/nginx_accept_language_module)
mod_a["accept_language"]="giom"
mod_pn["accept_language"]="nginx_accept_language_module"
mod_pv["accept_language"]=""
mod_lic["accept_language"]="BSD-2"
mod_sha["accept_language"]="2f69842f83dac77f7d98b41a2b31b13b87aeaba7"
mod_p["accept_language"]="${mod_pn["accept_language"]}-${mod_sha["accept_language"]}"
mod_uri["accept_language"]="https://github.com/${mod_a["accept_language"]}/${mod_pn["accept_language"]}/archive/${mod_sha["accept_language"]}.tar.gz"
mod_wd["accept_language"]="${WORKDIR}/${mod_p["accept_language"]}"
mod_doc["accept_language"]="README.textile"

# Concat (https://github.com/alibaba/nginx-http-concat)
mod_a["concat"]="alibaba"
mod_pn["concat"]="nginx-http-concat"
mod_pv["concat"]="1.2.2"
mod_lic["concat"]="BSD-2"
mod_p["concat"]="${mod_pn["concat"]}-${mod_pv["concat"]}"
mod_uri["concat"]="https://github.com/${mod_a["concat"]}/${mod_pn["concat"]}/archive/${mod_pv["concat"]}.tar.gz"
mod_wd["concat"]="${WORKDIR}/${mod_p["concat"]}"
mod_doc["concat"]="README.md"


# ModSecurity (https://www.modsecurity.org/download.html)
mod_a["modsecurity"]="modsecurity"
mod_pn["modsecurity"]="modsecurity"
mod_pv["modsecurity"]="2.9.0"
mod_lic["modsecurity"]="Apache-2.0"
mod_p["modsecurity"]="${mod_pn["modsecurity"]}-${mod_pv["modsecurity"]}"
mod_uri["modsecurity"]="https://www.modsecurity.org/tarball/${mod_pv[modsecurity]}/${mod_p["modsecurity"]}.tar.gz"
mod_wd["modsecurity"]="${WORKDIR}/${mod_p["modsecurity"]}/nginx/${mod_pn["modsecurity"]}"
mod_doc["modsecurity"]="README.TXT CHANGES"

# Push Stream (https://github.com/wandenberg/nginx-push-stream-module)
mod_a["push_stream"]="wandenberg"
mod_pn["push_stream"]="nginx-push-stream-module"
mod_pv["push_stream"]="0.5.1"
mod_lic["push_stream"]="GPL-3"
mod_p["push_stream"]="${mod_pn["push_stream"]}-${mod_pv["push_stream"]}"
mod_uri["push_stream"]="https://github.com/${mod_a["push_stream"]}/${mod_pn["push_stream"]}/archive/${mod_pv["push_stream"]}.tar.gz"
mod_wd["push_stream"]="${WORKDIR}/${mod_p["push_stream"]}"
mod_doc["push_stream"]="README.textile CHANGELOG.textile AUTHORS"

# Sticky (https://bitbucket.org/nginx-goodies/nginx-sticky-module-ng)
mod_a["sticky"]="nginx-goodies"
mod_pn["sticky"]="nginx-sticky-module-ng"
mod_pv["sticky"]="1.2.5"
mod_sha["sticky"]="c78b7dd79d0d"
mod_lic["sticky"]="BSD-2"
mod_p["sticky"]="${mod_a["sticky"]}-${mod_pn["sticky"]}-${mod_sha["sticky"]}"
mod_uri["sticky"]="http://bitbucket.org/${mod_a["sticky"]}/${mod_pn["sticky"]}/get/${mod_sha["sticky"]}.tar.gz"
mod_wd["sticky"]="${WORKDIR}/${mod_p["sticky"]}"
mod_doc["sticky"]="README.md Changelog.txt"

# AJP (https://github.com/yaoweibin/nginx_ajp_module)
mod_a["ajp"]="yaoweibin"
mod_pn["ajp"]="nginx_ajp_module"
mod_pv["ajp"]="0.3.0"
mod_sha["ajp"]="bf6cd93f2098b59260de8d494f0f4b1f11a84627"
mod_lic["ajp"]="BSD-2"
mod_p["ajp"]="${mod_pn["ajp"]}-${mod_sha["ajp"]}"
mod_uri["ajp"]="https://github.com/${mod_a["ajp"]}/${mod_pn["ajp"]}/archive/${mod_sha["ajp"]}.tar.gz"
mod_wd["ajp"]="${WORKDIR}/${mod_p["ajp"]}"
mod_doc["ajp"]="README"

####################################
#####
#####
#####   https://www.nginx.com/resources/wiki/modules/
#####
#####
####################################

#mod_a["test"]="test"
#mod_pn["test"]="ngx_devel_kit"
#mod_pv["test"]="0.2.19"
#mod_sha["test"]="bf6cd93f2098b59260de8d494f0f4b1f11a84627"
#mod_lic["test"]="BSD"
#mod_p["test"]="${mod_pn["ndk"]}-${mod_pv["ndk"]}"
#mod_uri["test"]="https://github.com/${mod_a["ndk"]}/${mod_pn["ndk"]}/archive/v${mod_pv["ndk"]}.tar.gz"
#mod_wd["test"]="${WORKDIR}/${mod_p["ndk"]}"
#mod_doc["test"]="README README_AUTO_LIB"

############################################################################
##
##  ##########    ######            ########        ######
##      ##       ########           ##    ####     ########
##      ##      ####  ####          ##      ##    ####  ####
##      ##      ##      ##          ##      ##    ##      ##
##      ##      ##      ##          ##      ##    ##      ##          
##      ##      ####  ####          ##      ##    ####  ####
##      ##       ########           ##    ####     ########   
##      ##        ######            ########        ######
##      
############################################################################

# Audio Track for HTTP Live Streaming
# href="https://github.com/flavioribeiro/nginx-audio-track-for-hls-module"
# HTTP Digest Authentication
# https://github.com/atomx/nginx-http-auth-digest
# ngx_http_auth_request_module
# http://mdounin.ru/hg/ngx_http_auth_request_module/
# ngx_auto_lib
# https://github.com/simpl/ngx_auto_lib
# ngx_aws_auth
# https://github.com/anomalizer/ngx_aws_auth
# Circle Gif
# href="https://github.com/evanmiller/nginx_circle_gif"
# nginx-backtrace
# https://github.com/alibaba/nginx-backtrace
# href="Nchan/"><em>Nchan</em>
# href="https://github.com/slact/nchan">slact/nchan
# href="https://github.com/nbs-system/naxsi">nbs-system/naxsi
# href="https://github.com/kr/nginx-notice">kr/nginx-notice
# href="https://github.com/kyprizel/nginx_ocsp_proxy-module">kyprizel/nginx_ocsp_proxy-module
# href="https://github.com/apcera/nginx-openssl-version">apcera/nginx-openssl-version
# href="owner_match/"><em>Owner Match</em>
# href="https://heiher.info/1755.html">Download
# href="https://github.com/pagespeed/ngx_pagespeed">pagespeed/ngx_pagespeed
# href="https://github.com/replay/ngx_http_php_session">replay/ngx_http_php_session
# href="https://github.com/replay/ngx_http_php_memcache_standard_balancer">replay/ngx_http_php_memcache_standard_balancer
# href="http://labs.frickle.com/nginx_ngx_postgres">Download
# href="http://www.vanko.me/book/page/pubcookie-module-nginx">Download
# href="clojure/"><em>Clojure</em>
# href="https://github.com/nginx-clojure/nginx-clojure">nginx-clojure/nginx-clojure
# href="consistent_hash/"><em>Upstream Consistent Hash</em>
# href="https://github.com/replay/ngx_http_consistent_hash">replay/ngx_http_consistent_hash
# href="domain_resolve/"><em>Upstream Domain Resolve</em>
# href="https://github.com/wdaike/ngx_upstream_jdomain/">wdaike/ngx_upstream_jdomain/
# href="https://github.com/kali/nginx-dynamic-etags">kali/nginx-dynamic-etags
# href="https://github.com/yzprofile/ngx_http_dyups_module">yzprofile/ngx_http_dyups_module
# href="https://github.com/bpaquet/ngx_http_enhanced_memcached_module">bpaquet/ngx_http_enhanced_memcached_module
# href="https://github.com/vkholodkov/nginx-eval-module">vkholodkov/nginx-eval-module
# href="https://github.com/ezmobius/nginx-ey-balancer">ezmobius/nginx-ey-balancer
# href="fair_balancer/"><em>Upstream Fair Balancer</em>
# href="https://github.com/gnosek/nginx-upstream-fair">gnosek/nginx-upstream-fair
# href="foot_filter/"><em>Foot Filter</em>
# href="https://github.com/alibaba/nginx-http-footer-filter">alibaba/nginx-http-footer-filter
# href="https://github.com/flygoast/ngx_http_footer_if_filter/">flygoast/ngx_http_footer_if_filter/
# href="form_input/"><em>Form Input</em>
# href="https://github.com/calio/form-input-nginx-module">calio/form-input-nginx-module
# href="https://github.com/leev/ngx_http_geoip2_module">leev/ngx_http_geoip2_module
# href="https://github.com/mdirolf/nginx-gridfs">mdirolf/nginx-gridfs
# href="groovy_handler/"><em>Groovy</em>
# href="https://github.com/nginx-clojure/nginx-clojure">nginx-clojure/nginx-clojure
# href="healthcheck/"><em>HTTP Healthcheck</em>
# href="https://github.com/cep21/healthcheck_nginx_upstreams">cep21/healthcheck_nginx_upstreams
# href="https://github.com/Lax/ngx_http_accounting_module">Lax/ngx_http_accounting_module
# href="https://github.com/calio/iconv-nginx-module">calio/iconv-nginx-module
# href="https://github.com/flygoast/ngx_http_internal_redirect/">flygoast/ngx_http_internal_redirect/
# href="https://github.com/chrislim2888/ip2location-nginx">chrislim2888/ip2location-nginx
# href="java_handler/"><em>Java</em>
# href="https://github.com/nginx-clojure/nginx-clojure">nginx-clojure/nginx-clojure
# href="https://github.com/peter-leonov/ngx_http_js_module#readme">peter-leonov/ngx_http_js_module#readme
# href="ketama_chash/"><em>Upstream Ketama CHash</em>
# href="https://github.com/flygoast/ngx_http_upstream_ketama_chash/releases/">flygoast/ngx_http_upstream_ketama_chash/releases/
# href="https://github.com/cfsego/limit_upload_rate">cfsego/limit_upload_rate
# href="https://github.com/cfsego/nginx-limit-upstream/">cfsego/nginx-limit-upstream/
# href="https://github.com/cfsego/ngx_log_if/">cfsego/ngx_log_if/
# href="log_zmq/"><em>Log ZMQ</em>
# href="https://github.com/sapo/nginx-log-zmq/">sapo/nginx-log-zmq/
# href="https://github.com/replay/ngx_http_lower_upper_case">replay/ngx_http_lower_upper_case


# href="https://github.com/kainswor/nginx_md5_filter">kainswor/nginx_md5_filter
# href="https://github.com/openresty/memc-nginx-module">openresty/memc-nginx-module
# href="https://github.com/simpl/ngx_mongo">simpl/ngx_mongo
# href="rdns/"><em>HTTP rDNS</em>
# href="https://github.com/flant/nginx-http-rdns">flant/nginx-http-rdns
# href="redis/"><em>HTTP Redis</em>
# href="http://people.FreeBSD.ORG/~osa/ngx_http_redis-0.3.5.tar.gz">Download
# href="https://github.com/yuri-gushin/Roboo/downloads">yuri-gushin/Roboo/downloads
# href="rrd_graph/"><em>RRD Graph</em>
# href="https://github.com/evanmiller/mod_rrd_graph">evanmiller/mod_rrd_graph
# href="https://github.com/mneudert/sass-nginx-module">mneudert/sass-nginx-module
# href="secure_download/"><em>Secure Download</em>
# href="https://github.com/replay/ngx_http_secure_download">replay/ngx_http_secure_download
# href="https://github.com/wandenberg/nginx-selective-cache-purge-module">wandenberg/nginx-selective-cache-purge-module
# href="https://github.com/liseen/set-cconv-nginx-module">liseen/set-cconv-nginx-module
# href="https://github.com/simpl/ngx_http_set_hash">simpl/ngx_http_set_hash
# href="https://github.com/simpl/ngx_http_set_lang/downloads">simpl/ngx_http_set_lang/downloads
# href="http://code.google.com/p/nginx-sflow-module/downloads/list">Download
# href="https://github.com/cubicdaiya/ngx_small_light">cubicdaiya/ngx_small_light
# href="https://github.com/wandenberg/nginx-sorted-querystring-module">wandenberg/nginx-sorted-querystring-module
# href="https://github.com/reeteshranjan/sphinx2-nginx-module">reeteshranjan/sphinx2-nginx-module
# href="https://github.com/stnoonan/spnego-http-auth-nginx-module">stnoonan/spnego-http-auth-nginx-module
# href="https://github.com/mikewest/nginx-static-etags">mikewest/nginx-static-etags
# href="https://github.com/zebrafishlabs/nginx-statsd">zebrafishlabs/nginx-statsd
# href="https://bitbucket.org/nginx-goodies/nginx-sticky-module-ng/get/master.tar.gz">
# </span>nginx-goodies/nginx-sticky-module-ng/get/master.tar.gz
# href="https://github.com/Qihoo360/ngx_http_subrange_module">Qihoo360/ngx_http_subrange_module
# href="substitutions/"><em>Substitutions</em>
# href="https://github.com/yaoweibin/ngx_http_substitutions_filter_module">yaoweibin/ngx_http_substitutions_filter_module
# href="https://github.com/reeteshranjan/summarizer-nginx-module">reeteshranjan/summarizer-nginx-module
# href="http://labs.frickle.com/nginx_ngx_supervisord">Download
# href="https://github.com/alibaba/nginx-http-sysguard">alibaba/nginx-http-sysguard
# href="https://github.com/yaoweibin/nginx_tcp_proxy_module">yaoweibin/nginx_tcp_proxy_module
# href="https://github.com/kyprizel/testcookie-nginx-module">kyprizel/testcookie-nginx-module
# href="https://github.com/flygoast/ngx_http_types_filter">flygoast/ngx_http_types_filter
# href="https://github.com/youzee/nginx-unzip-module">youzee/nginx-unzip-module
# href="upload/"><em>Upload</em>
# href="https://github.com/vkholodkov/nginx-upload-module">vkholodkov/nginx-upload-module
# href="https://github.com/vozlt/nginx-module-url">vozlt/nginx-module-url
# href="user_agent/"><em>User Agent</em>
# href="https://github.com/alibaba/nginx-http-user-agent">alibaba/nginx-http-user-agent
# href="https://github.com/wandenberg/nginx-video-thumbextractor-module">wandenberg/nginx-video-thumbextractor-module
# href="https://github.com/vozlt/nginx-module-vts">vozlt/nginx-module-vts

#
# href="zip/"><em>Zip</em>
# href="https://github.com/evanmiller/mod_zip">evanmiller/mod_zip

inherit eutils ssl-cert toolchain-funcs perl-module flag-o-matic user versionator

DESCRIPTION="Robust, small and high performance http and reverse proxy server"
HOMEPAGE="http://nginx.org"
SRC_URI="http://nginx.org/download/${P}.tar.gz"

for m in ${!mod_a[@]} ; do
	SRC_URI+=" nginx_modules_external_${m}? (
		${mod_uri[$m]} -> ${mod_p[$m]}.tar.gz )"
done

LICENSE="BSD-2"

for m in ${!mod_a[@]} ; do
	LICENSE+=" nginx_modules_external_${m}? ( ${mod_lic[$m]} )"
done

SLOT="0"
KEYWORDS="*"

mods[upstream]="upstream_hash upstream_ip_hash upstream_keepalive upstream_least_conn upstream_zone"

mods[standard]="access auth_basic autoindex browser charset empty_gif fastcgi
	geo gzip limit_conn limit_req map memcached proxy referer rewrite
	scgi ssi split_clients userid uwsgi slice"

mods[optional]="addition auth_request dav degradation flv geoip gunzip gzip_static 
	image_filter mp4 perl random_index realip secure_link ssl v2 stub_status sub xslt"

mods[mail]="imap pop3 smtp"

IUSE="+aio +http +http-cache +pcre +poll +select
	cpp_test debug google_perftools ipv6 libatomic luajit pcre-jit rtsig
	ssl threads vim-syntax"

for m in ${mods[upstream]} ; do
	IUSE+=" +nginx_modules_http_${m}" ; done

for m in ${mods[standard]} ; do
	IUSE+=" +nginx_modules_http_${m}" ; done

for m in ${mods[optional]} ; do
	IUSE+=" nginx_modules_http_${m}" ; done

for m in ${mods[mail]} ; do
	IUSE+=" nginx_modules_mail_${m}" ; done

for m in ${!mod_a[@]} ; do
	IUSE+=" nginx_modules_external_${m}" ; done

RDEPEND="http-cache? ( dev-libs/openssl )
	pcre? ( dev-libs/libpcre )
	pcre-jit? ( dev-libs/libpcre[jit] )
	ssl? ( dev-libs/openssl )

	nginx_modules_http_geoip? ( dev-libs/geoip )
	nginx_modules_http_gunzip? ( sys-libs/zlib )
	nginx_modules_http_gzip? ( sys-libs/zlib )
	nginx_modules_http_gzip_static? ( sys-libs/zlib )
	nginx_modules_http_image_filter? ( media-libs/gd[jpeg,png] )
	nginx_modules_http_perl? ( dev-lang/perl )
	nginx_modules_http_rewrite? ( dev-libs/libpcre )
	nginx_modules_http_secure_link? ( dev-libs/openssl )
	nginx_modules_http_v2? ( dev-libs/openssl )
	nginx_modules_http_xslt? ( dev-libs/libxml2
		dev-libs/libxslt )

	nginx_modules_external_lua? ( !luajit? ( dev-lang/lua )
		luajit? ( dev-lang/luajit ) )
	nginx_modules_external_auth_pam? ( virtual/pam )
	nginx_modules_external_metrics? ( dev-libs/yajl )
	nginx_modules_external_dav_ext? ( dev-libs/expat )
	nginx_modules_external_modsecurity? ( dev-libs/libxml2
		dev-libs/apr-util
		www-servers/apache )"

DEPEND="${CDEPEND}
	arm? ( dev-libs/libatomic_ops )
	libatomic? ( dev-libs/libatomic_ops )"

PDEPEND="vim-syntax? ( app-vim/nginx-syntax )"

REQUIRED_USE="pcre-jit? ( pcre )
	nginx_modules_external_dav_ext? ( nginx_modules_http_dav )
	nginx_modules_external_lua? ( nginx_modules_http_rewrite )
	nginx_modules_external_metrics? ( nginx_modules_http_stub_status )
	nginx_modules_external_modsecurity? ( pcre )
	nginx_modules_external_naxsi? ( pcre )
	nginx_modules_external_push_stream? ( ssl )"

pkg_setup() {
	NGINX_HOME="${EROOT}var/lib/${PN}"
	NGINX_HOME_TMP="${NGINX_HOME}/tmp"

	if egetent group ${PN} > /dev/null ; then
		elog "${PN} group already exist."
		elog "group creation step skipped."
	else
		enewgroup  ${PN} > /dev/null
		elog "${PN} group created by portage."
	fi

	if egetent passwd  ${PN} > /dev/null ; then
		elog "${PN} user already exist."
		elog "user creation step skipped."
	else
		enewuser ${PN} -1 -1 "${NGINX_HOME}" \
			${PN} > /dev/null
		elog "${PN} user with ${NGINX_HOME} home"
		elog "was created by portage."
	fi

	if use libatomic ; then
		ewarn "GCC 4.1+ features built-in atomic operations."
		ewarn "Using libatomic_ops is only needed if using"
		ewarn "a different compiler or a GCC prior to 4.1"
	fi

	if [[ -n $NGINX_ADD_MODULES ]] ; then
		ewarn "You are building custom modules via \$NGINX_ADD_MODULES!"
		ewarn "This nginx installation is not supported!"
		ewarn "Make sure you can reproduce the bug without those modules"
		ewarn "_before_ reporting bugs."
	fi

	if ! use http ; then
		ewarn "To actually disable all http-functionality you also have"
		ewarn "to disable all nginx http modules."
	fi
}

src_prepare() {
	epatch "${FILESDIR}/${PN}-fix-perl-install-path.patch"

	if use nginx_modules_external_upstream_check; then
		epatch "${mod_wd[upstream_check]}/check_1.9.2+.patch"
	fi

	if use nginx_modules_external_lua ; then
		sed -e "s/-llua5.1/-llua/" \
			-i "${mod_wd[lua]}/config" || die
	fi

	find auto/ -type f -print0 | \
		xargs -0 sed -i 's:\&\& make:\&\& \\$(MAKE):' || die
	# We have config protection, don't rename etc files
	sed -i "s;.default;;" auto/install || die
	# Remove useless files
	sed -e "/koi-/d" \
		-e "/win-/d" \
		-i "${S}/auto/install" || die

	# Don't install to /etc/nginx/ if not in use
	local m
	for m in fastcgi scgi uwsgi ; do
		if ! use nginx_modules_http_${m} ; then
			sed -e "/${m}/d" \
				-i "${S}/auto/install" || die
		fi
	done

	epatch_user
}

src_configure() {
	# modsecurity needs to generate nginx/modsecurity/config before including it
	if use nginx_modules_external_modsecurity; then
		cd "${WORKDIR}/${mod_p[modsecurity]}"
		if use luajit ; then
			sed -i \
				-e 's|^\(LUA_PKGNAMES\)=.*|\1="luajit"|' \
				configure || die
		fi

		./configure \
			--enable-standalone-module \
			$(use_enable pcre-jit) \
			$(use_with nginx_modules_external_lua lua) || die "configure failed for modsecurity"
	fi

	cd "${S}"

	local nginx_configure= http_enabled= mail_enabled=

	use aio && nginx_configure+=" --with-file-aio"
	use cpp_test && nginx_configure+=" --with-cpp_test_module"
	use debug && nginx_configure+=" --with-debug"
	use google_perftools && nginx_configure+=" --with-google_perftools_module"
	use ipv6 && nginx_configure+=" --with-ipv6"
	use libatomic && nginx_configure+=" --with-libatomic"
	use pcre && nginx_configure+=" --with-pcre"
	use pcre-jit && nginx_configure+=" --with-pcre-jit"
	use rtsig && nginx_configure+=" --with-rtsig_module"
	use threads && nginx_configure+=" --with-threads"

	for m in ${mods[upstream]}; do
		use nginx_modules_http_${m} && \
			http_enabled=1 || \
			nginx_configure+=" --without-http_${m}_module"
	done

	for m in ${mods[standard]}; do
		use nginx_modules_http_${m} && \
			http_enabled=1 || \
			nginx_configure+=" --without-http_${m}_module"
	done

	for m in ${mods[optional]}; do
		use nginx_modules_http_${m} && \
			http_enabled=1 && \
			nginx_configure+=" --with-http_${m}_module"
	done

	for m in ${!mod_a[@]} ; do
		use nginx_modules_external_${m} && \
			http_enabled=1 && \
			nginx_configure+=" --add-module=${mod_wd[$m]}"
	done

	if use nginx_modules_external_lua ; then
		http_enabled=1
		if use luajit ; then
			export LUAJIT_LIB=$(pkg-config --variable libdir luajit)
			export LUAJIT_INC=$(pkg-config --variable includedir luajit)
		else
			export LUA_LIB=$(pkg-config --variable libdir lua)
			export LUA_INC=$(pkg-config --variable includedir lua)
		fi
	fi

	if use http || use http-cache ; then
		http_enabled=1
	fi

	if [[ $http_enabled ]] ; then
		use http-cache || nginx_configure+=" --without-http-cache"
		use ssl && nginx_configure+=" --with-http_ssl_module"
	else
		nginx_configure+=" --without-http --without-http-cache"
	fi

	for m in ${mods[mail]} ; do
		use nginx_modules_mail_${m} && \
			mail_enabled=1 || \
			nginx_configure+=" --without-mail_${m}_module"
	done

	if [[ -n "${mail_enabled}" ]] ; then
		nginx_configure+=" --with-mail"
		use ssl && nginx_configure+=" --with-mail_ssl_module"
	fi

	for mod in $NGINX_ADD_MODULES; do
		nginx_configure+=" --add-module=${mod}"
	done

	# https://bugs.gentoo.org/286772
	export LANG=C LC_ALL=C
	tc-export CC

	if ! use prefix; then
		nginx_configure+=" \
			--user=${PN} \
			--group=${PN}"
	fi

	./configure \
		--prefix="${EPREFIX}/usr" \
		--conf-path="${EPREFIX}/etc/${PN}/${PN}.conf" \
		--error-log-path="${EPREFIX}/var/log/${PN}/error_log" \
		--pid-path="${EPREFIX}/run/${PN}.pid" \
		--lock-path="${EPREFIX}/run/lock/${PN}.lock" \
		--with-cc-opt="-I${EROOT}usr/include" \
		--with-ld-opt="-L${EROOT}usr/$(get_libdir)" \
		--http-log-path="${EPREFIX}/var/log/${PN}/access_log" \
		--http-client-body-temp-path="${EPREFIX}/${NGINX_HOME_TMP}/client" \
		--http-proxy-temp-path="${EPREFIX}/${NGINX_HOME_TMP}/proxy" \
		--http-fastcgi-temp-path="${EPREFIX}/${NGINX_HOME_TMP}/fastcgi" \
		--http-scgi-temp-path="${EPREFIX}/${NGINX_HOME_TMP}/scgi" \
		--http-uwsgi-temp-path="${EPREFIX}/${NGINX_HOME_TMP}/uwsgi" \
		$(use_with poll poll_module) \
		$(use_with select select_module) \
		${nginx_configure} || die "configure failed"

	# A purely cosmetic change that makes nginx -V more readable.
	# This can be good if people outside the gentoo community would
	# troubleshoot and question the user setup.
	sed -e "s;${WORKDIR};external_module;g" \
		-i "${S}/objs/ngx_auto_config.h" || die
}

src_compile() {
	use nginx_modules_external_modsecurity && emake -C "${WORKDIR}/${mod_p[modsecurity]}"

	# https://bugs.gentoo.org/286772
	export LANG=C LC_ALL=C
	emake LINK="${CC} ${LDFLAGS}" OTHERLDFLAGS="${LDFLAGS}"
}

src_install() {
	emake DESTDIR="${ED}" install

	insinto "${EROOT}etc/${PN}"
	doins "${FILESDIR}/${PN}.conf"

	newinitd "${FILESDIR}/${PN}.initd" "${PN}"

	keepdir "${EROOT}etc/${PN}"/sites-{available,enabled}
	insinto "${EROOT}etc/${PN}/sites-available"
	doins "${FILESDIR}/sites-available/localhost"
	dodir "${EROOT}usr/share/nginx/html"
	insinto "${EROOT}usr/share/nginx/html"
	doins "${FILESDIR}/example/index.html"
	doins "${FILESDIR}/example/nginx-logo.png"
	doins "${FILESDIR}/example/powered-by-funtoo.png"

	doman "${S}/man/nginx.8"
	dodoc CHANGES* README

	keepdir "${EROOT}var/www/localhost"
	rm -r "${ED}usr/html" || die

	local keepdir_list="${NGINX_HOME_TMP}/client"
	local m
	for m in proxy fastcgi scgi uwsgi; do
		use nginx_modules_http_${m} && \
			keepdir_list+=" ${NGINX_HOME_TMP}/${m}"
	done

	# logrotate
	insinto "/etc/logrotate.d"
	newins "${FILESDIR}/${PN}.logrotate" "${PN}"
	keepdir_list+=" /var/log/${PN}"

	keepdir  ${keepdir_list}
	fperms 0700 ${keepdir_list}
	fowners ${PN}:${PN} ${keepdir_list}

	if use nginx_modules_http_perl ; then
		cd "${S}/objs/src/http/modules/perl"
		emake DESTDIR="${ED}" INSTALLDIRS=vendor install
		perl_delete_localpod
	fi

	for m in ${!mod_a[@]} ; do
	if use nginx_modules_external_${m} ; then
		docinto "${mod_p[$m]}"
		for d in ${mod_doc[$m]} ; do
			dodoc ${WORKDIR}/${mod_p[$m]}/${d} ; done
	fi
	done
}
pkg_preinst() {
	if [[ ! -d "${EROOT}etc/${PN}/sites-available" ]] ; then
		first_install=yes
	else
		first_install=no
	fi
}

pkg_postinst() {
	if [[ "${first_install}" = "yes" ]] && \
		[[ ! -e "${EROOT}etc/${PN}/sites-enabled/localhost" ]] ; then
			einfo "Enabling example Web site (see http://127.0.0.1)"
			ln -s "../sites-available/localhost" \
			"${EROOT}etc/${PN}/sites-enabled/localhost" || \
			die
	fi

	if use ssl ; then
		if [[ ! -f "${EROOT}etc/ssl/${PN}/${PN}.key" ]] ; then
			install_cert /etc/ssl/${PN}/${PN}
			use prefix || \
				chown \
				${PN}:${PN} \
				"${EROOT}etc/ssl/${PN}"/${PN}.{crt,csr,key,pem}
		fi
	fi

	if use nginx_modules_external_lua && use nginx_modules_http_v2 ; then
		ewarn "Lua 3rd party module author warns against using ${PN}"
		ewarn "with lua and v2 enabled."
		ewarn "You can check http://git.io/OldLsg for more info."
	fi

	einfo "If nginx complains about insufficient number of open files at"
	einfo "start, ensure that you have a correct /etc/security/limits.conf"
	einfo "and then do relogin to your system to ensure that the new max"
	einfo "open file limits are active. Then try restarting nginx again."

	# If the nginx user can't change into or read the dir, display a warning.
	# If su is not available we display the warning nevertheless since
	# we can't check properly
	su -s /bin/sh -c "cd ${EROOT}var/log/${PN} && ls" ${PN} >&/dev/null
	if [[ $? -ne 0 ]] ; then
		ewarn "Please make sure that the (${PN}) user"
		ewarn "or (${PN}) group has"
		ewarn "at least 'rx' permissions (default on fresh install)"
		ewarn "on ${EROOT}var/log/${PN} directory."
		ewarn "Otherwise you end up with empty log files"
		ewarn "after a logrotate."
	fi
}
