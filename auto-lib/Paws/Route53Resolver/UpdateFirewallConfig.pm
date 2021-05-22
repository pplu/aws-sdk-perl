
package Paws::Route53Resolver::UpdateFirewallConfig;
  use Moose;
  has FirewallFailOpen => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFirewallConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::UpdateFirewallConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateFirewallConfig - Arguments for method UpdateFirewallConfig on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFirewallConfig on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method UpdateFirewallConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFirewallConfig.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $UpdateFirewallConfigResponse = $route53resolver->UpdateFirewallConfig(
      FirewallFailOpen => 'ENABLED',
      ResourceId       => 'MyResourceId',

    );

    # Results:
    my $FirewallConfig = $UpdateFirewallConfigResponse->FirewallConfig;

    # Returns a L<Paws::Route53Resolver::UpdateFirewallConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/UpdateFirewallConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FirewallFailOpen => Str

Determines how Route 53 Resolver handles queries during failures, for
example when all traffic that is sent to DNS Firewall fails to receive
a reply.

=over

=item *

By default, fail open is disabled, which means the failure mode is
closed. This approach favors security over availability. DNS Firewall
blocks queries that it is unable to evaluate properly.

=item *

If you enable this option, the failure mode is open. This approach
favors availability over security. DNS Firewall allows queries to
proceed if it is unable to properly evaluate them.

=back

This behavior is only enforced for VPCs that have at least one DNS
Firewall rule group association.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> ResourceId => Str

The ID of the Amazon virtual private cloud (VPC) that the configuration
is for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFirewallConfig in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

