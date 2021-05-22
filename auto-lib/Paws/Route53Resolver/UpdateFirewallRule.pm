
package Paws::Route53Resolver::UpdateFirewallRule;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has BlockOverrideDnsType => (is => 'ro', isa => 'Str');
  has BlockOverrideDomain => (is => 'ro', isa => 'Str');
  has BlockOverrideTtl => (is => 'ro', isa => 'Int');
  has BlockResponse => (is => 'ro', isa => 'Str');
  has FirewallDomainListId => (is => 'ro', isa => 'Str', required => 1);
  has FirewallRuleGroupId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFirewallRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::UpdateFirewallRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateFirewallRule - Arguments for method UpdateFirewallRule on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFirewallRule on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method UpdateFirewallRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFirewallRule.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $UpdateFirewallRuleResponse = $route53resolver->UpdateFirewallRule(
      FirewallDomainListId => 'MyResourceId',
      FirewallRuleGroupId  => 'MyResourceId',
      Action               => 'ALLOW',                    # OPTIONAL
      BlockOverrideDnsType => 'CNAME',                    # OPTIONAL
      BlockOverrideDomain  => 'MyBlockOverrideDomain',    # OPTIONAL
      BlockOverrideTtl     => 1,                          # OPTIONAL
      BlockResponse        => 'NODATA',                   # OPTIONAL
      Name                 => 'MyName',                   # OPTIONAL
      Priority             => 1,                          # OPTIONAL
    );

    # Results:
    my $FirewallRule = $UpdateFirewallRuleResponse->FirewallRule;

    # Returns a L<Paws::Route53Resolver::UpdateFirewallRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/UpdateFirewallRule>

=head1 ATTRIBUTES


=head2 Action => Str

The action that DNS Firewall should take on a DNS query when it matches
one of the domains in the rule's domain list:

=over

=item *

C<ALLOW> - Permit the request to go through.

=item *

C<ALERT> - Permit the request to go through but send an alert to the
logs.

=item *

C<BLOCK> - Disallow the request. This option requires additional
details in the rule's C<BlockResponse>.

=back


Valid values are: C<"ALLOW">, C<"BLOCK">, C<"ALERT">

=head2 BlockOverrideDnsType => Str

The DNS record's type. This determines the format of the record value
that you provided in C<BlockOverrideDomain>. Used for the rule action
C<BLOCK> with a C<BlockResponse> setting of C<OVERRIDE>.

Valid values are: C<"CNAME">

=head2 BlockOverrideDomain => Str

The custom DNS record to send back in response to the query. Used for
the rule action C<BLOCK> with a C<BlockResponse> setting of
C<OVERRIDE>.



=head2 BlockOverrideTtl => Int

The recommended amount of time, in seconds, for the DNS resolver or web
browser to cache the provided override record. Used for the rule action
C<BLOCK> with a C<BlockResponse> setting of C<OVERRIDE>.



=head2 BlockResponse => Str

The way that you want DNS Firewall to block the request. Used for the
rule action setting C<BLOCK>.

=over

=item *

C<NODATA> - Respond indicating that the query was successful, but no
response is available for it.

=item *

C<NXDOMAIN> - Respond indicating that the domain name that's in the
query doesn't exist.

=item *

C<OVERRIDE> - Provide a custom override in the response. This option
requires custom handling details in the rule's C<BlockOverride*>
settings.

=back


Valid values are: C<"NODATA">, C<"NXDOMAIN">, C<"OVERRIDE">

=head2 B<REQUIRED> FirewallDomainListId => Str

The ID of the domain list to use in the rule.



=head2 B<REQUIRED> FirewallRuleGroupId => Str

The unique identifier of the firewall rule group for the rule.



=head2 Name => Str

The name of the rule.



=head2 Priority => Int

The setting that determines the processing order of the rule in the
rule group. DNS Firewall processes the rules in a rule group by order
of priority, starting from the lowest setting.

You must specify a unique priority for each rule in a rule group. To
make it easier to insert rules later, leave space between the numbers,
for example, use 100, 200, and so on. You can change the priority
setting for the rules in a rule group at any time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFirewallRule in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

