
package Paws::EC2::ModifyVpnTunnelOptions;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has TunnelOptions => (is => 'ro', isa => 'Paws::EC2::ModifyVpnTunnelOptionsSpecification', required => 1);
  has VpnConnectionId => (is => 'ro', isa => 'Str', required => 1);
  has VpnTunnelOutsideIpAddress => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyVpnTunnelOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyVpnTunnelOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpnTunnelOptions - Arguments for method ModifyVpnTunnelOptions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyVpnTunnelOptions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyVpnTunnelOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyVpnTunnelOptions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyVpnTunnelOptionsResult = $ec2->ModifyVpnTunnelOptions(
      TunnelOptions => {
        DPDTimeoutAction  => 'MyString',    # OPTIONAL
        DPDTimeoutSeconds => 1,             # OPTIONAL
        IKEVersions       => [
          {
            Value => 'MyString',            # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Phase1DHGroupNumbers => [
          {
            Value => 1,                     # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Phase1EncryptionAlgorithms => [
          {
            Value => 'MyString',            # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Phase1IntegrityAlgorithms => [
          {
            Value => 'MyString',            # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Phase1LifetimeSeconds => 1,         # OPTIONAL
        Phase2DHGroupNumbers  => [
          {
            Value => 1,                     # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Phase2EncryptionAlgorithms => [
          {
            Value => 'MyString',            # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Phase2IntegrityAlgorithms => [
          {
            Value => 'MyString',            # OPTIONAL
          },
          ...
        ],                                  # OPTIONAL
        Phase2LifetimeSeconds  => 1,             # OPTIONAL
        PreSharedKey           => 'MyString',    # OPTIONAL
        RekeyFuzzPercentage    => 1,             # OPTIONAL
        RekeyMarginTimeSeconds => 1,             # OPTIONAL
        ReplayWindowSize       => 1,             # OPTIONAL
        StartupAction          => 'MyString',    # OPTIONAL
        TunnelInsideCidr       => 'MyString',    # OPTIONAL
        TunnelInsideIpv6Cidr   => 'MyString',    # OPTIONAL
      },
      VpnConnectionId           => 'MyVpnConnectionId',
      VpnTunnelOutsideIpAddress => 'MyString',
      DryRun                    => 1,                     # OPTIONAL
    );

    # Results:
    my $VpnConnection = $ModifyVpnTunnelOptionsResult->VpnConnection;

    # Returns a L<Paws::EC2::ModifyVpnTunnelOptionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyVpnTunnelOptions>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> TunnelOptions => L<Paws::EC2::ModifyVpnTunnelOptionsSpecification>

The tunnel options to modify.



=head2 B<REQUIRED> VpnConnectionId => Str

The ID of the AWS Site-to-Site VPN connection.



=head2 B<REQUIRED> VpnTunnelOutsideIpAddress => Str

The external IP address of the VPN tunnel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyVpnTunnelOptions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

