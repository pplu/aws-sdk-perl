
package Paws::NetworkFirewall::DisassociateSubnets;
  use Moose;
  has FirewallArn => (is => 'ro', isa => 'Str');
  has FirewallName => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has UpdateToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateSubnets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::DisassociateSubnetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DisassociateSubnets - Arguments for method DisassociateSubnets on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateSubnets on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method DisassociateSubnets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateSubnets.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $DisassociateSubnetsResponse = $network -firewall->DisassociateSubnets(
      SubnetIds => [
        'MyAzSubnet', ...    # min: 1, max: 128
      ],
      FirewallArn  => 'MyResourceArn',     # OPTIONAL
      FirewallName => 'MyResourceName',    # OPTIONAL
      UpdateToken  => 'MyUpdateToken',     # OPTIONAL
    );

    # Results:
    my $FirewallArn    = $DisassociateSubnetsResponse->FirewallArn;
    my $FirewallName   = $DisassociateSubnetsResponse->FirewallName;
    my $SubnetMappings = $DisassociateSubnetsResponse->SubnetMappings;
    my $UpdateToken    = $DisassociateSubnetsResponse->UpdateToken;

    # Returns a L<Paws::NetworkFirewall::DisassociateSubnetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/DisassociateSubnets>

=head1 ATTRIBUTES


=head2 FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.

You must specify the ARN or the name, and you can specify both.



=head2 FirewallName => Str

The descriptive name of the firewall. You can't change the name of a
firewall after you create it.

You must specify the ARN or the name, and you can specify both.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The unique identifiers for the subnets that you want to disassociate.



=head2 UpdateToken => Str

An optional token that you can use for optimistic locking. Network
Firewall returns a token to your requests that access the firewall. The
token marks the state of the firewall resource at the time of the
request.

To make an unconditional change to the firewall, omit the token in your
update request. Without the token, Network Firewall performs your
updates regardless of whether the firewall has changed since you last
retrieved it.

To make a conditional change to the firewall, provide the token in your
update request. Network Firewall uses the token to ensure that the
firewall hasn't changed since you last retrieved it. If it has changed,
the operation fails with an C<InvalidTokenException>. If this happens,
retrieve the firewall again to get a current copy of it with a new
token. Reapply your changes as needed, then try the operation again
using the new token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateSubnets in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

