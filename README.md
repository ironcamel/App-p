# About

    Steroids for your perl one-liners. Is that even possible?

# Installation

    sudo cpan App::p

# Documentation

See [App::p](https://metacpan.org/module/App::p)

# Usage

    Usage: p [-lneE etc] 'code'
        The code can make use of:
        r   to File::Slurper::read_text()
        w   to File::Slurper::write_file()
        S   to say()
        p   to print()
        dd  to Data::Dump::dd()
        jd  to JSON::encode (utf8/pretty)
        jl  to JSON::decode (utf8/allow nonref) a thing
        xd  to XML::Hash::LX::hash2xml()
        xl  to XML::Hash::LX::xml2hash()
        yd  to YAML::Dump()
        yl  to YAML::Load()
        xj  to convert an xml file to json
        jx  to convert a json file to xml
        get,head,getprint,getstore,mirror from LWP::Simple
        sum,first,min,max,zip,uniq,any,all,none ... all of List::AllUtils

# Examples

    p 'dd [File::Spec->path]'   # dynamically load arbitrary modules
    p -pe 's/foo/bar/' foo.txt  # use your favorite options like -lane
    p 'say "hello world!"'      # -E is assumed if no options are provided
    p 'dd yl r "config.yml"'    # chain commands
    p 'S sum 1,2,3,4'           # all of List::AllUtils is at your fingertips
    p 'dd ExtUtils::Installed->new->modules' # list all installed modules
    p '  dd xl r "/etc/xml/xml-core.xml"'    # print dump of hash converted xml
    p 'p xd xl r "/etc/xml/xml-core.xml"'    # print xml converted from hash
    p 'p get "http://icanhazip.com"'         # print contents of url
    p 'dd uniq map $_->{ostext}, @{ jl get "http://www.cpantesters.org/distro/A/App-p.json" }' # have fun!
