
package Paws::NetworkFirewall::DeleteRuleGroup;
  use Moose;
  has RuleGroupArn => (is => 'ro', isa => 'Str');
  has RuleGroupName => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::DeleteRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DeleteRuleGroup - Arguments for method DeleteRuleGroup on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRuleGroup on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method DeleteRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRuleGroup.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $DeleteRuleGroupResponse = $network -firewall->DeleteRuleGroup(
      RuleGroupArn  => 'MyResourceArn',     # OPTIONAL
      RuleGroupName => 'MyResourceName',    # OPTIONAL
      Type          => 'STATELESS',         # OPTIONAL
    );

    # Results:
    my $RuleGroupResponse = $DeleteRuleGroupResponse->RuleGroupResponse;

    # Returns a L<Paws::NetworkFirewall::DeleteRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/DeleteRuleGroup>

=head1 ATTRIBUTES


=head2 RuleGroupArn => Str

The Amazon Resource Name (ARN) of the rule group.

You must specify the ARN or the name, and you can specify both.



=head2 RuleGroupName => Str

The descriptive name of the rule group. You can't change the name of a
rule group after you create it.

You must specify the ARN or the name, and you can specify both.



=head2 Type => Str

Indicates whether the rule group is stateless or stateful. If the rule
group is stateless, it contains stateless rules. If it is stateful, it
contains stateful rules.

This setting is required for requests that do not include the
C<RuleGroupARN>.

Valid values are: C<"STATELESS">, C<"STATEFUL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRuleGroup in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

