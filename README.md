neo_lua
=======

Playing with Lua and Neo4j

Pre-Requisites
--------------

    ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.33.tar.gz
    tar xzvf pcre-8.33.tar.gz
    ./configure
    make
    make install

Mac OSX:

    brew install pcre

OpenResty
---------

    wget http://openresty.org/download/ngx_openresty-1.4.2.3.tar.gz
    tar xzvf ngx_openresty-1.4.2.3.tar.gz
    cd ngx_openresty-1.4.2.3
    ./configure --with-luajit
    ./configure --with-ld-opt="-L /usr/local/lib" --with-luajit  (Mac OSX)
    make
    make install


LuaRocks
--------
    
    wget http://luarocks.org/releases/luarocks-2.1.0.tar.gz
    tar xvzf luarocks-2.1.0.tar.gz
    cd luarocks-2.1.0
    ./configure --prefix=/usr/local/openresty/luajit     --with-lua=/usr/local/openresty/luajit/     --lua-suffix=jit     --with-lua-include=/usr/local/openresty/luajit/include/luajit-2.0
    make build
    make install

Mac OSX:

    brew install luarocks
    sudo ln -s /usr/bin/make /usr/bin/gmake
    brew install md5

Lapis
-----

    luarocks install --server=http://rocks.moonscript.org/manifests/leafo lapis
    mkdir app
    cd app
    lapis new

MoonScript
----------

    luarocks install moonscript
    moonc web.moon
    lapis server

Try it
------
   
     http://localhost:8080 



