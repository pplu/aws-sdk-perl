# Generated by default/object.tt
package Paws::IoTWireless::WirelessMetadata;
  use Moose;
  has LoRaWAN => (is => 'ro', isa => 'Paws::IoTWireless::LoRaWANSendDataToDevice');
  has Sidewalk => (is => 'ro', isa => 'Paws::IoTWireless::SidewalkSendDataToDevice');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::WirelessMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTWireless::WirelessMetadata object:

  $service_obj->Method(Att1 => { LoRaWAN => $value, ..., Sidewalk => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTWireless::WirelessMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->LoRaWAN

=head1 DESCRIPTION

WirelessMetadata object.

=head1 ATTRIBUTES


=head2 LoRaWAN => L<Paws::IoTWireless::LoRaWANSendDataToDevice>

LoRaWAN device info.


=head2 Sidewalk => L<Paws::IoTWireless::SidewalkSendDataToDevice>

The Sidewalk account credentials.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

