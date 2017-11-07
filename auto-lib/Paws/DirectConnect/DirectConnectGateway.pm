package Paws::DirectConnect::DirectConnectGateway;
  use Moose;
  has AmazonSideAsn => (is => 'ro', isa => 'Int', request_name => 'amazonSideAsn', traits => ['NameInRequest']);
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', request_name => 'directConnectGatewayId', traits => ['NameInRequest']);
  has DirectConnectGatewayName => (is => 'ro', isa => 'Str', request_name => 'directConnectGatewayName', traits => ['NameInRequest']);
  has DirectConnectGatewayState => (is => 'ro', isa => 'Str', request_name => 'directConnectGatewayState', traits => ['NameInRequest']);
  has OwnerAccount => (is => 'ro', isa => 'Str', request_name => 'ownerAccount', traits => ['NameInRequest']);
  has StateChangeError => (is => 'ro', isa => 'Str', request_name => 'stateChangeError', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DirectConnectGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::DirectConnectGateway object:

  $service_obj->Method(Att1 => { AmazonSideAsn => $value, ..., StateChangeError => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::DirectConnectGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->AmazonSideAsn

=head1 DESCRIPTION

A direct connect gateway is an intermediate object that enables you to
connect virtual interfaces and virtual private gateways.

=head1 ATTRIBUTES


=head2 AmazonSideAsn => Int

  The autonomous system number (ASN) for the Amazon side of the
connection.


=head2 DirectConnectGatewayId => Str

  


=head2 DirectConnectGatewayName => Str

  


=head2 DirectConnectGatewayState => Str

  


=head2 OwnerAccount => Str

  The AWS account ID of the owner of the direct connect gateway.


=head2 StateChangeError => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

