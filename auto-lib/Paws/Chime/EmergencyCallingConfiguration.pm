# Generated by default/object.tt
package Paws::Chime::EmergencyCallingConfiguration;
  use Moose;
  has DNIS => (is => 'ro', isa => 'ArrayRef[Paws::Chime::DNISEmergencyCallingConfiguration]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::EmergencyCallingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::EmergencyCallingConfiguration object:

  $service_obj->Method(Att1 => { DNIS => $value, ..., DNIS => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::EmergencyCallingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DNIS

=head1 DESCRIPTION

The emergency calling configuration details associated with an Amazon
Chime Voice Connector.

=head1 ATTRIBUTES


=head2 DNIS => ArrayRef[L<Paws::Chime::DNISEmergencyCallingConfiguration>]

The Dialed Number Identification Service (DNIS) emergency calling
configuration details.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

