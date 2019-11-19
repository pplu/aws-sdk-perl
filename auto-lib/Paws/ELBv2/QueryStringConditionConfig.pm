# Generated from default/object.tt
package Paws::ELBv2::QueryStringConditionConfig;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_QueryStringKeyValuePair/;
  has Values => (is => 'ro', isa => ArrayRef[ELBv2_QueryStringKeyValuePair]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Values' => {
                             'type' => 'ArrayRef[ELBv2_QueryStringKeyValuePair]',
                             'class' => 'Paws::ELBv2::QueryStringKeyValuePair'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::QueryStringConditionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::QueryStringConditionConfig object:

  $service_obj->Method(Att1 => { Values => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::QueryStringConditionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Values

=head1 DESCRIPTION

Information about a query string condition.

The query string component of a URI starts after the first '?'
character and is terminated by either a '#' character or the end of the
URI. A typical query string contains key/value pairs separated by '&'
characters. The allowed characters are specified by RFC 3986. Any
character can be percentage encoded.

=head1 ATTRIBUTES


=head2 Values => ArrayRef[ELBv2_QueryStringKeyValuePair]

  One or more key/value pairs or values to find in the query string. The
maximum size of each string is 128 characters. The comparison is case
insensitive. The following wildcard characters are supported: *
(matches 0 or more characters) and ? (matches exactly 1 character). To
search for a literal '*' or '?' character in a query string, you must
escape these characters in C<Values> using a '\' character.

If you specify multiple key/value pairs or values, the condition is
satisfied if one of them is found in the query string.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

