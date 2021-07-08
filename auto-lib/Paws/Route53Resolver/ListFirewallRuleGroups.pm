
package Paws::Route53Resolver::ListFirewallRuleGroups;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFirewallRuleGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ListFirewallRuleGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListFirewallRuleGroups - Arguments for method ListFirewallRuleGroups on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFirewallRuleGroups on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ListFirewallRuleGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFirewallRuleGroups.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ListFirewallRuleGroupsResponse =
      $route53resolver->ListFirewallRuleGroups(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $FirewallRuleGroups =
      $ListFirewallRuleGroupsResponse->FirewallRuleGroups;
    my $NextToken = $ListFirewallRuleGroupsResponse->NextToken;

    # Returns a L<Paws::Route53Resolver::ListFirewallRuleGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ListFirewallRuleGroups>

=head1 ATTRIBUTES


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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFirewallRuleGroups in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

