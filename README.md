# About

    Steroids for your perl one-liners. Is that even possible?

# Installation

    sudo cpan App::p

# Documentation

See [App::p](https://metacpan.org/module/App::p)

# Usage

    Usage: p [-lneE etc] 'code'
        The code can make use of:
        r   to File::Slurp::read_file
        w   to File::Slurp::write_file
        jd  to JSON::XS::encode (utf8/pretty)
        jl  to JSON::XS::decode (utf8/allow nonref) a thing
        xd  to XML::Hash::LX::hash2xml()
        xl  to XML::Hash::LX::xml2hash()
        yd  to YAML::Dump()
        yl  to YAML::Load()
        get,head,getprint,getstore,mirror from LWP::Simple
        sum,first,min,max,zip,uniq,any,all,none ... all of List::AllUtils

# Examples

    p '&p([File::Spec->path])'  # dynamically load arbitrary modules
    p -pe 's/foo/bar/' foo.txt  # use your favorite options like -lane
    p 'say "hello world!"'      # -E is assumed if no options are provided
    p 'p yl r "config.yml"'     # chain commands
    p 'say sum 1,2,3,4'         # all of List::AllUtils is at your fingertips
    p '&p([ExtUtils::Installed->new->modules])' # list all installed modules
    p ' p xl r "/etc/xml/xml-core.xml"'         # print dump of hash converted xml
    p 'xd xl r "/etc/xml/xml-core.xml"'         # print xml converted from hash
    p 'p get "http://ifconfig.me"'              # print contents of url
