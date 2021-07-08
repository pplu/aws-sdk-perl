package Paws::EC2::CreateTransitGatewayVpcAttachmentRequestOptions;
  use Moose;
  has ApplianceModeSupport => (is => 'ro', isa => 'Str');
  has DnsSupport => (is => 'ro', isa => 'Str');
  has Ipv6Support => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTransitGatewayVpcAttachmentRequestOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CreateTransitGatewayVpcAttachmentRequestOptions object:

  $service_obj->Method(Att1 => { ApplianceModeSupport => $value, ..., Ipv6Support => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CreateTransitGatewayVpcAttachmentRequestOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplianceModeSupport

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ApplianceModeSupport => Str

Enable or disable support for appliance mode. If enabled, a traffic
flow between a source and destination uses the same Availability Zone
for the VPC attachment for the lifetime of that flow. The default is
C<disable>.


=head2 DnsSupport => Str

Enable or disable DNS support. The default is C<enable>.


=head2 Ipv6Support => Str

Enable or disable IPv6 support. The default is C<disable>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
