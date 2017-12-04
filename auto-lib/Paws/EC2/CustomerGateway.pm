package Paws::EC2::CustomerGateway;
  use Moose;
  has BgpAsn => (is => 'ro', isa => 'Str', request_name => 'bgpAsn', traits => ['NameInRequest']);
  has CustomerGatewayId => (is => 'ro', isa => 'Str', request_name => 'customerGatewayId', traits => ['NameInRequest']);
  has IpAddress => (is => 'ro', isa => 'Str', request_name => 'ipAddress', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CustomerGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CustomerGateway object:

  $service_obj->Method(Att1 => { BgpAsn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CustomerGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->BgpAsn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BgpAsn => Str

  The customer gateway's Border Gateway Protocol (BGP) Autonomous System
Number (ASN).


=head2 CustomerGatewayId => Str

  The ID of the customer gateway.


=head2 IpAddress => Str

  The Internet-routable IP address of the customer gateway's outside
interface.


=head2 State => Str

  The current state of the customer gateway (C<pending | available |
deleting | deleted>).


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the customer gateway.


=head2 Type => Str

  The type of VPN connection the customer gateway supports (C<ipsec.1>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
