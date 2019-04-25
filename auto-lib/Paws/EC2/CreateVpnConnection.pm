
package Paws::EC2::CreateVpnConnection;
  use Moose;
  has CustomerGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Options => (is => 'ro', isa => 'Paws::EC2::VpnConnectionOptionsSpecification', traits => ['NameInRequest'], request_name => 'options' );
  has TransitGatewayId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has VpnGatewayId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateVpnConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpnConnection - Arguments for method CreateVpnConnection on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpnConnection on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateVpnConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpnConnection.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateVpnConnectionResult = $ec2->CreateVpnConnection(
      CustomerGatewayId => 'MyString',
      Type              => 'MyString',
      DryRun            => 1,            # OPTIONAL
      Options           => {
        StaticRoutesOnly => 1,
        TunnelOptions    => [
          {
            PreSharedKey     => 'MyString',
            TunnelInsideCidr => 'MyString',
          },
          ...
        ],                               # OPTIONAL
      },    # OPTIONAL
      TransitGatewayId => 'MyString',    # OPTIONAL
      VpnGatewayId     => 'MyString',    # OPTIONAL
    );

    # Results:
    my $VpnConnection = $CreateVpnConnectionResult->VpnConnection;

    # Returns a L<Paws::EC2::CreateVpnConnectionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateVpnConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomerGatewayId => Str

The ID of the customer gateway.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Options => L<Paws::EC2::VpnConnectionOptionsSpecification>

The options for the VPN connection.



=head2 TransitGatewayId => Str

The ID of the transit gateway. If you specify a transit gateway, you
cannot specify a virtual private gateway.



=head2 B<REQUIRED> Type => Str

The type of VPN connection (C<ipsec.1>).



=head2 VpnGatewayId => Str

The ID of the virtual private gateway. If you specify a virtual private
gateway, you cannot specify a transit gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpnConnection in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

