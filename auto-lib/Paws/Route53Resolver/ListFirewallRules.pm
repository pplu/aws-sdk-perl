
package Paws::Route53Resolver::ListFirewallRules;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has FirewallRuleGroupId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFirewallRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ListFirewallRulesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListFirewallRules - Arguments for method ListFirewallRules on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFirewallRules on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ListFirewallRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFirewallRules.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ListFirewallRulesResponse = $route53resolver->ListFirewallRules(
      FirewallRuleGroupId => 'MyResourceId',
      Action              => 'ALLOW',          # OPTIONAL
      MaxResults          => 1,                # OPTIONAL
      NextToken           => 'MyNextToken',    # OPTIONAL
      Priority            => 1,                # OPTIONAL
    );

    # Results:
    my $FirewallRules = $ListFirewallRulesResponse->FirewallRules;
    my $NextToken     = $ListFirewallRulesResponse->NextToken;

    # Returns a L<Paws::Route53Resolver::ListFirewallRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ListFirewallRules>

=head1 ATTRIBUTES


=head2 Action => Str

Optional additional filter for the rules to retrieve.

The action that DNS Firewall should take on a DNS query when it matches
one of the domains in the rule's domain list:

=over

=item *

C<ALLOW> - Permit the request to go through.

=item *

C<ALERT> - Permit the request to go through but send an alert to the
logs.

=item *

C<BLOCK> - Disallow the request. If this is specified, additional
handling details are provided in the rule's C<BlockResponse> setting.

=back


Valid values are: C<"ALLOW">, C<"BLOCK">, C<"ALERT">

=head2 B<REQUIRED> FirewallRuleGroupId => Str

The unique identifier of the firewall rule group that you want to
retrieve the rules for.



=head2 MaxResults => Int

The maximum number of objects that you want Resolver to return for this
request. If more objects are available, in the response, Resolver
provides a C<NextToken> value that you can use in a subsequent call to
get the next batch of objects.

If you don't specify a value for C<MaxResults>, Resolver returns up to
100 objects.



=head2 NextToken => Str

For the first call to this list request, omit this value.

When you request a list of objects, Resolver returns at most the number
of objects specified in C<MaxResults>. If more objects are available
for retrieval, Resolver returns a C<NextToken> value in the response.
To retrieve the next batch of objects, use the token that was returned
for the prior request in your next request.



=head2 Priority => Int

Optional additional filter for the rules to retrieve.

The setting that determines the processing order of the rules in a rule
group. DNS Firewall processes the rules in a rule group by order of
priority, starting from the lowest setting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFirewallRules in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

