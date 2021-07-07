
package Paws::Route53Resolver::AssociateFirewallRuleGroup;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str', required => 1);
  has FirewallRuleGroupId => (is => 'ro', isa => 'Str', required => 1);
  has MutationProtection => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Priority => (is => 'ro', isa => 'Int', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Tag]');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateFirewallRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::AssociateFirewallRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::AssociateFirewallRuleGroup - Arguments for method AssociateFirewallRuleGroup on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateFirewallRuleGroup on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method AssociateFirewallRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateFirewallRuleGroup.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $AssociateFirewallRuleGroupResponse =
      $route53resolver->AssociateFirewallRuleGroup(
      CreatorRequestId    => 'MyCreatorRequestId',
      FirewallRuleGroupId => 'MyResourceId',
      Name                => 'MyName',
      Priority            => 1,
      VpcId               => 'MyResourceId',
      MutationProtection  => 'ENABLED',              # OPTIONAL
      Tags                => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $FirewallRuleGroupAssociation =
      $AssociateFirewallRuleGroupResponse->FirewallRuleGroupAssociation;

# Returns a L<Paws::Route53Resolver::AssociateFirewallRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/AssociateFirewallRuleGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatorRequestId => Str

A unique string that identifies the request and that allows failed
requests to be retried without the risk of executing the operation
twice. C<CreatorRequestId> can be any unique string, for example, a
date/time stamp.



=head2 B<REQUIRED> FirewallRuleGroupId => Str

The unique identifier of the firewall rule group.



=head2 MutationProtection => Str

If enabled, this setting disallows modification or removal of the
association, to help prevent against accidentally altering DNS firewall
protections. When you create the association, the default setting is
C<DISABLED>.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 B<REQUIRED> Name => Str

A name that lets you identify the association, to manage and use it.



=head2 B<REQUIRED> Priority => Int

The setting that determines the processing order of the rule group
among the rule groups that you associate with the specified VPC. DNS
Firewall filters VPC traffic starting from rule group with the lowest
numeric priority setting.

You must specify a unique priority for each rule group that you
associate with a single VPC. To make it easier to insert rule groups
later, leave space between the numbers, for example, use 100, 200, and
so on. You can change the priority setting for a rule group association
after you create it.



=head2 Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]

A list of the tag keys and values that you want to associate with the
rule group association.



=head2 B<REQUIRED> VpcId => Str

The unique identifier of the VPC that you want to associate with the
rule group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateFirewallRuleGroup in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

