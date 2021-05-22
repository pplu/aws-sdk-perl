
package Paws::Route53Resolver::UpdateFirewallRuleGroupAssociation;
  use Moose;
  has FirewallRuleGroupAssociationId => (is => 'ro', isa => 'Str', required => 1);
  has MutationProtection => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFirewallRuleGroupAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::UpdateFirewallRuleGroupAssociationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateFirewallRuleGroupAssociation - Arguments for method UpdateFirewallRuleGroupAssociation on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFirewallRuleGroupAssociation on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method UpdateFirewallRuleGroupAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFirewallRuleGroupAssociation.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $UpdateFirewallRuleGroupAssociationResponse =
      $route53resolver->UpdateFirewallRuleGroupAssociation(
      FirewallRuleGroupAssociationId => 'MyResourceId',
      MutationProtection             => 'ENABLED',        # OPTIONAL
      Name                           => 'MyName',         # OPTIONAL
      Priority                       => 1,                # OPTIONAL
      );

    # Results:
    my $FirewallRuleGroupAssociation =
      $UpdateFirewallRuleGroupAssociationResponse->FirewallRuleGroupAssociation;

# Returns a L<Paws::Route53Resolver::UpdateFirewallRuleGroupAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/UpdateFirewallRuleGroupAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FirewallRuleGroupAssociationId => Str

The identifier of the FirewallRuleGroupAssociation.



=head2 MutationProtection => Str

If enabled, this setting disallows modification or removal of the
association, to help prevent against accidentally altering DNS firewall
protections.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Name => Str

The name of the rule group association.



=head2 Priority => Int

The setting that determines the processing order of the rule group
among the rule groups that you associate with the specified VPC. DNS
Firewall filters VPC traffic starting from rule group with the lowest
numeric priority setting.

You must specify a unique priority for each rule group that you
associate with a single VPC. To make it easier to insert rule groups
later, leave space between the numbers, for example, use 100, 200, and
so on. You can change the priority setting for a rule group association
after you create it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFirewallRuleGroupAssociation in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

