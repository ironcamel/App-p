use strict;
use warnings;
package App::p;

# VERSION

# ABSTRACT: Steroids for your perl one-liners.

=head1 DESCRIPTION

This module provides a script 'p', which has handy shortcuts for modules that are used in one-liners.

=head1 SYNOPSIS

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

    Examples:

    p 'dd [File::Spec->path]'   # dynamically load arbitrary modules
    p -pe 's/foo/bar/' foo.txt  # use your favorite options like -lane
    p 'say "hello world!"'      # -E is assumed if no options are provided
    p 'dd yl r "config.yml"'    # chain commands
    p 'S sum 1,2,3,4'           # all of List::AllUtils is at your fingertips
    p 'dd ExtUtils::Installed->new->modules' # list all installed modules
    p '  dd xl r "/etc/xml/xml-core.xml"'    # print dump of hash converted xml
    p 'p xd xl r "/etc/xml/xml-core.xml"'    # print xml converted from hash
    p 'p get "http://icanhazip.com"'         # print contents of url
    p 'p xj "file.xml"          #   (xj xml to json )print xml's equivalent json
    p 'p jx "file.json"         #   (jx json to xml )print json's equivalent xml
    p 'dd uniq map $_->{ostext}, @{ jl get "http://www.cpantesters.org/distro/A/App-p.json" }' # have fun!

=head1 CONTRIBUTORS

=over 4

=item *

datamuc <L<https://github.com/datamuc>>

=item *

Jenish Gnanasicamani <L<https://github.com/JenishGnanasicamani>>

=item *

Stanislaw Pusep <L<https://github.com/creaktive>>

=item *

Stefan Corneliu Petrea <L<https://github.com/wsdookadr>>

=item *

Tommy Stanton <L<https://github.com/tommystanton>>

=back

=head1 ACKNOWLEDGEMENTS

This is based on Randy Stauner's
L<http://blogs.perl.org/users/randy_stauner/2011/06/exploratory-one-liners-with-less-typing.html>
and Marco Fontani's L<https://gist.github.com/1042504>.

=cut

1;
