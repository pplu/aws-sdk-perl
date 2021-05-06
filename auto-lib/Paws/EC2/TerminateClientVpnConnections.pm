
package Paws::EC2::TerminateClientVpnConnections;
  use Moose;
  has ClientVpnEndpointId => (is => 'ro', isa => 'Str', required => 1);
  has ConnectionId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Username => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateClientVpnConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::TerminateClientVpnConnectionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TerminateClientVpnConnections - Arguments for method TerminateClientVpnConnections on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateClientVpnConnections on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method TerminateClientVpnConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateClientVpnConnections.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $TerminateClientVpnConnectionsResult =
      $ec2->TerminateClientVpnConnections(
      ClientVpnEndpointId => 'MyClientVpnEndpointId',
      ConnectionId        => 'MyString',                # OPTIONAL
      DryRun              => 1,                         # OPTIONAL
      Username            => 'MyString',                # OPTIONAL
      );

    # Results:
    my $ClientVpnEndpointId =
      $TerminateClientVpnConnectionsResult->ClientVpnEndpointId;
    my $ConnectionStatuses =
      $TerminateClientVpnConnectionsResult->ConnectionStatuses;
    my $Username = $TerminateClientVpnConnectionsResult->Username;

    # Returns a L<Paws::EC2::TerminateClientVpnConnectionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/TerminateClientVpnConnections>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientVpnEndpointId => Str

The ID of the Client VPN endpoint to which the client is connected.



=head2 ConnectionId => Str

The ID of the client connection to be terminated.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Username => Str

The name of the user who initiated the connection. Use this option to
terminate all active connections for the specified user. This option
can only be used if the user has established up to five connections.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateClientVpnConnections in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

