
package Paws::WAFRegional::GetRuleGroup;
  use Moose;
  has RuleGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRuleGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::GetRuleGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetRuleGroup - Arguments for method GetRuleGroup on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRuleGroup on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method GetRuleGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRuleGroup.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    my $GetRuleGroupResponse = $waf -regional->GetRuleGroup(
      RuleGroupId => 'MyResourceId',

    );

    # Results:
    my $RuleGroup = $GetRuleGroupResponse->RuleGroup;

    # Returns a L<Paws::WAFRegional::GetRuleGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/GetRuleGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleGroupId => Str

The C<RuleGroupId> of the RuleGroup that you want to get.
C<RuleGroupId> is returned by CreateRuleGroup and by ListRuleGroups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRuleGroup in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

