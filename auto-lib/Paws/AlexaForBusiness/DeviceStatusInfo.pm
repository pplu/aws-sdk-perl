package Paws::AlexaForBusiness::DeviceStatusInfo;
  use Moose;
  has ConnectionStatus => (is => 'ro', isa => 'Str');
  has DeviceStatusDetails => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::DeviceStatusDetail]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::DeviceStatusInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::DeviceStatusInfo object:

  $service_obj->Method(Att1 => { ConnectionStatus => $value, ..., DeviceStatusDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::DeviceStatusInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionStatus

=head1 DESCRIPTION

Detailed information about a device's status.

=head1 ATTRIBUTES


=head2 ConnectionStatus => Str

  The latest available information about the connection status of a
device.


=head2 DeviceStatusDetails => ArrayRef[L<Paws::AlexaForBusiness::DeviceStatusDetail>]

  One or more device status detail descriptions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

