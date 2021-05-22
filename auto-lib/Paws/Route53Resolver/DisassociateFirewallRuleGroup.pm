
package Paws::Route53Resolver::DisassociateFirewallRuleGroup;
  use Moose;
  has FirewallRuleGroupAssociationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateFirewallRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::DisassociateFirewallRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::DisassociateFirewallRuleGroup - Arguments for method DisassociateFirewallRuleGroup on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateFirewallRuleGroup on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method DisassociateFirewallRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateFirewallRuleGroup.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $DisassociateFirewallRuleGroupResponse =
      $route53resolver->DisassociateFirewallRuleGroup(
      FirewallRuleGroupAssociationId => 'MyResourceId',

      );

    # Results:
    my $FirewallRuleGroupAssociation =
      $DisassociateFirewallRuleGroupResponse->FirewallRuleGroupAssociation;

# Returns a L<Paws::Route53Resolver::DisassociateFirewallRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/DisassociateFirewallRuleGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FirewallRuleGroupAssociationId => Str

The identifier of the FirewallRuleGroupAssociation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateFirewallRuleGroup in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

