# Generated from default/object.tt
package Paws::Chime::TerminationHealth;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has Source => (is => 'ro', isa => Str);
  has Timestamp => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Timestamp' => {
                                'type' => 'Str'
                              },
               'Source' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::TerminationHealth

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::TerminationHealth object:

  $service_obj->Method(Att1 => { Source => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::TerminationHealth object:

  $result = $service_obj->Method(...);
  $result->Att1->Source

=head1 DESCRIPTION

The termination health details, including the source IP address and
timestamp of the last successful SIP C<OPTIONS> message from your SIP
infrastructure.

=head1 ATTRIBUTES


=head2 Source => Str

  The source IP address.


=head2 Timestamp => Str

  The timestamp, in ISO 8601 format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

