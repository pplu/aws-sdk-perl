
package Paws::EC2::CreateVpnConnectionRoute;
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnConnectionRoute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpnConnectionRoute - Arguments for method CreateVpnConnectionRoute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpnConnectionRoute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVpnConnectionRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpnConnectionRoute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    $ec2->CreateVpnConnectionRoute(
      DestinationCidrBlock => 'MyString',
      VpnConnectionId      => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVpnConnectionRoute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationCidrBlock => Str

The CIDR block associated with the local subnet of the customer
network.



=head2 B<REQUIRED> VpnConnectionId => Str

The ID of the VPN connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpnConnectionRoute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

