package Paws::EC2::VpnGateway;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', xmlname => 'availabilityZone', traits => ['Unwrapped']);
  has State => (is => 'ro', isa => 'Str', xmlname => 'state', traits => ['Unwrapped']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', xmlname => 'tagSet', traits => ['Unwrapped']);
  has Type => (is => 'ro', isa => 'Str', xmlname => 'type', traits => ['Unwrapped']);
  has VpcAttachments => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpcAttachment]', xmlname => 'attachments', traits => ['Unwrapped']);
  has VpnGatewayId => (is => 'ro', isa => 'Str', xmlname => 'vpnGatewayId', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpnGateway

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpnGateway object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., VpnGatewayId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpnGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 ATTRIBUTES

=head2 AvailabilityZone => Str

  The Availability Zone where the virtual private gateway was created.

=head2 State => Str

  The current state of the virtual private gateway.

=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the virtual private gateway.

=head2 Type => Str

  The type of VPN connection the virtual private gateway supports.

=head2 VpcAttachments => ArrayRef[L<Paws::EC2::VpcAttachment>]

  Any VPCs attached to the virtual private gateway.

=head2 VpnGatewayId => Str

  The ID of the virtual private gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
