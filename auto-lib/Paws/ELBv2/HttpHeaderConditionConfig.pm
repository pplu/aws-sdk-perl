# Generated from default/object.tt
package Paws::ELBv2::HttpHeaderConditionConfig;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ELBv2::Types qw//;
  has HttpHeaderName => (is => 'ro', isa => Str);
  has Values => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HttpHeaderName' => {
                                     'type' => 'Str'
                                   },
               'Values' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::HttpHeaderConditionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::HttpHeaderConditionConfig object:

  $service_obj->Method(Att1 => { HttpHeaderName => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::HttpHeaderConditionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->HttpHeaderName

=head1 DESCRIPTION

Information about an HTTP header condition.

There is a set of standard HTTP header fields. You can also define
custom HTTP header fields.

=head1 ATTRIBUTES


=head2 HttpHeaderName => Str

  The name of the HTTP header field. The maximum size is 40 characters.
The header name is case insensitive. The allowed characters are
specified by RFC 7230. Wildcards are not supported.

You can't use an HTTP header condition to specify the host header. Use
HostHeaderConditionConfig to specify a host header condition.


=head2 Values => ArrayRef[Str|Undef]

  One or more strings to compare against the value of the HTTP header.
The maximum size of each string is 128 characters. The comparison
strings are case insensitive. The following wildcard characters are
supported: * (matches 0 or more characters) and ? (matches exactly 1
character).

If the same header appears multiple times in the request, we search
them in order until a match is found.

If you specify multiple strings, the condition is satisfied if one of
the strings matches the value of the HTTP header. To require that all
of the strings are a match, create one condition per string.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

