
package Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetwork;
  use Moose;
  has ClientVpnEndpointId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' , required => 1);
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToClientVpnTargetNetwork');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetworkResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetwork - Arguments for method ApplySecurityGroupsToClientVpnTargetNetwork on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ApplySecurityGroupsToClientVpnTargetNetwork on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ApplySecurityGroupsToClientVpnTargetNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ApplySecurityGroupsToClientVpnTargetNetwork.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ApplySecurityGroupsToClientVpnTargetNetworkResult =
      $ec2->ApplySecurityGroupsToClientVpnTargetNetwork(
      ClientVpnEndpointId => 'MyString',
      SecurityGroupIds    => [ 'MyString', ... ],
      VpcId               => 'MyString',
      DryRun              => 1,                     # OPTIONAL
      );

    # Results:
    my $SecurityGroupIds =
      $ApplySecurityGroupsToClientVpnTargetNetworkResult->SecurityGroupIds;

# Returns a L<Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetworkResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ApplySecurityGroupsToClientVpnTargetNetwork>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientVpnEndpointId => Str

The ID of the Client VPN endpoint.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups to apply to the associated target
network. Up to 5 security groups can be applied to an associated target
network.



=head2 B<REQUIRED> VpcId => Str

The ID of the VPC in which the associated target network is located.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ApplySecurityGroupsToClientVpnTargetNetwork in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

