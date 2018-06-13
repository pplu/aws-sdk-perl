
package Paws::WAFRegional::GetRule;
  use Moose;
  has RuleId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::GetRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetRule - Arguments for method GetRule on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRule on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method GetRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRule.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    # To get a rule
    # The following example returns the details of a rule with the ID
    # example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    my $GetRuleResponse = $waf -regional->GetRule(
      {
        'RuleId' => 'example1ds3t-46da-4fdb-b8d5-abc321j569j5'
      }
    );

    # Results:
    my $Rule = $GetRuleResponse->Rule;

    # Returns a L<Paws::WAFRegional::GetRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/GetRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleId => Str

The C<RuleId> of the Rule that you want to get. C<RuleId> is returned
by CreateRule and by ListRules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRule in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

