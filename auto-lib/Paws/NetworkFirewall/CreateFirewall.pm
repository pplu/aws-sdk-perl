
package Paws::NetworkFirewall::CreateFirewall;
  use Moose;
  has DeleteProtection => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has FirewallName => (is => 'ro', isa => 'Str', required => 1);
  has FirewallPolicyArn => (is => 'ro', isa => 'Str', required => 1);
  has FirewallPolicyChangeProtection => (is => 'ro', isa => 'Bool');
  has SubnetChangeProtection => (is => 'ro', isa => 'Bool');
  has SubnetMappings => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::SubnetMapping]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::Tag]');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFirewall');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::CreateFirewallResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::CreateFirewall - Arguments for method CreateFirewall on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFirewall on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method CreateFirewall.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFirewall.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $CreateFirewallResponse = $network -firewall->CreateFirewall(
      FirewallName      => 'MyResourceName',
      FirewallPolicyArn => 'MyResourceArn',
      SubnetMappings    => [
        {
          SubnetId => 'MyCollectionMember_String',

        },
        ...
      ],
      VpcId                          => 'MyVpcId',
      DeleteProtection               => 1,                  # OPTIONAL
      Description                    => 'MyDescription',    # OPTIONAL
      FirewallPolicyChangeProtection => 1,                  # OPTIONAL
      SubnetChangeProtection         => 1,                  # OPTIONAL
      Tags                           => [
        {
          Key   => 'MyTagKey',                              # min: 1, max: 128
          Value => 'MyTagValue',                            # max: 256

        },
        ...
      ],                                                    # OPTIONAL
    );

    # Results:
    my $Firewall       = $CreateFirewallResponse->Firewall;
    my $FirewallStatus = $CreateFirewallResponse->FirewallStatus;

    # Returns a L<Paws::NetworkFirewall::CreateFirewallResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/CreateFirewall>

=head1 ATTRIBUTES


=head2 DeleteProtection => Bool

A flag indicating whether it is possible to delete the firewall. A
setting of C<TRUE> indicates that the firewall is protected against
deletion. Use this setting to protect against accidentally deleting a
firewall that is in use. When you create a firewall, the operation
initializes this flag to C<TRUE>.



=head2 Description => Str

A description of the firewall.



=head2 B<REQUIRED> FirewallName => Str

The descriptive name of the firewall. You can't change the name of a
firewall after you create it.



=head2 B<REQUIRED> FirewallPolicyArn => Str

The Amazon Resource Name (ARN) of the FirewallPolicy that you want to
use for the firewall.



=head2 FirewallPolicyChangeProtection => Bool

A setting indicating whether the firewall is protected against a change
to the firewall policy association. Use this setting to protect against
accidentally modifying the firewall policy for a firewall that is in
use. When you create a firewall, the operation initializes this setting
to C<TRUE>.



=head2 SubnetChangeProtection => Bool

A setting indicating whether the firewall is protected against changes
to the subnet associations. Use this setting to protect against
accidentally modifying the subnet associations for a firewall that is
in use. When you create a firewall, the operation initializes this
setting to C<TRUE>.



=head2 B<REQUIRED> SubnetMappings => ArrayRef[L<Paws::NetworkFirewall::SubnetMapping>]

The public subnets to use for your Network Firewall firewalls. Each
subnet must belong to a different Availability Zone in the VPC. Network
Firewall creates a firewall endpoint in each subnet.



=head2 Tags => ArrayRef[L<Paws::NetworkFirewall::Tag>]

The key:value pairs to associate with the resource.



=head2 B<REQUIRED> VpcId => Str

The unique identifier of the VPC where Network Firewall should create
the firewall.

You can't change this setting after you create the firewall.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFirewall in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

