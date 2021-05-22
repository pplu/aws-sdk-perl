
package Paws::Route53Resolver::ListFirewallRuleGroupAssociations;
  use Moose;
  has FirewallRuleGroupId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFirewallRuleGroupAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ListFirewallRuleGroupAssociationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListFirewallRuleGroupAssociations - Arguments for method ListFirewallRuleGroupAssociations on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFirewallRuleGroupAssociations on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ListFirewallRuleGroupAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFirewallRuleGroupAssociations.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ListFirewallRuleGroupAssociationsResponse =
      $route53resolver->ListFirewallRuleGroupAssociations(
      FirewallRuleGroupId => 'MyResourceId',    # OPTIONAL
      MaxResults          => 1,                 # OPTIONAL
      NextToken           => 'MyNextToken',     # OPTIONAL
      Priority            => 1,                 # OPTIONAL
      Status              => 'COMPLETE',        # OPTIONAL
      VpcId               => 'MyResourceId',    # OPTIONAL
      );

    # Results:
    my $FirewallRuleGroupAssociations =
      $ListFirewallRuleGroupAssociationsResponse->FirewallRuleGroupAssociations;
    my $NextToken = $ListFirewallRuleGroupAssociationsResponse->NextToken;

# Returns a L<Paws::Route53Resolver::ListFirewallRuleGroupAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ListFirewallRuleGroupAssociations>

=head1 ATTRIBUTES


=head2 FirewallRuleGroupId => Str

The unique identifier of the firewall rule group that you want to
retrieve the associations for. Leave this blank to retrieve
associations for any rule group.



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

The setting that determines the processing order of the rule group
among the rule groups that are associated with a single VPC. DNS
Firewall filters VPC traffic starting from rule group with the lowest
numeric priority setting.



=head2 Status => Str

The association C<Status> setting that you want DNS Firewall to filter
on for the list. If you don't specify this, then DNS Firewall returns
all associations, regardless of status.

Valid values are: C<"COMPLETE">, C<"DELETING">, C<"UPDATING">

=head2 VpcId => Str

The unique identifier of the VPC that you want to retrieve the
associations for. Leave this blank to retrieve associations for any
VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFirewallRuleGroupAssociations in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

