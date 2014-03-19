# Copyright (c) 2014 lxsameer <lxsameer@gnu.org>
#
# This program is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the
# Free Software Foundation, either version 3 of the License, or (at your
#  option) any later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
# details.
# You should have received a copy of the GNU General Public License along with
# this program. If not, see http://www.gnu.org/licenses/.

function do_install() {
    info "Install files in /usr/local/share"
    info "If you are not a sudoer just copy ./.build/share to /usr/local/share manually"
    info "and create a link to ./kuso in your /usr/local/bin/kuso"
    sudo cp .build/share /usr/local/ -rv
    sudo ln -f -s `pwd`/kuso /usr/local/bin/kuso
}
