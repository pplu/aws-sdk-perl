# Generated from default/object.tt
package Paws::ELBv2::HostHeaderConditionConfig;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::ELBv2::Types qw//;
  has Values => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
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

Paws::ELBv2::HostHeaderConditionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::HostHeaderConditionConfig object:

  $service_obj->Method(Att1 => { Values => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::HostHeaderConditionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Values

=head1 DESCRIPTION

Information about a host header condition.

=head1 ATTRIBUTES


=head2 Values => ArrayRef[Str|Undef]

  One or more host names. The maximum size of each name is 128
characters. The comparison is case insensitive. The following wildcard
characters are supported: * (matches 0 or more characters) and ?
(matches exactly 1 character).

If you specify multiple strings, the condition is satisfied if one of
the strings matches the host name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

