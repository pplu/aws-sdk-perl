# Generated by default/object.tt
package Paws::GroundStation::UplinkEchoConfig;
  use Moose;
  has AntennaUplinkConfigArn => (is => 'ro', isa => 'Str', request_name => 'antennaUplinkConfigArn', traits => ['NameInRequest'], required => 1);
  has Enabled => (is => 'ro', isa => 'Bool', request_name => 'enabled', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::UplinkEchoConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::UplinkEchoConfig object:

  $service_obj->Method(Att1 => { AntennaUplinkConfigArn => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::UplinkEchoConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AntennaUplinkConfigArn

=head1 DESCRIPTION

Information about an uplink echo C<Config>.

Parameters from the C<AntennaUplinkConfig>, corresponding to the
specified C<AntennaUplinkConfigArn>, are used when this
C<UplinkEchoConfig> is used in a contact.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AntennaUplinkConfigArn => Str

ARN of an uplink C<Config>.


=head2 B<REQUIRED> Enabled => Bool

Whether or not an uplink C<Config> is enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

