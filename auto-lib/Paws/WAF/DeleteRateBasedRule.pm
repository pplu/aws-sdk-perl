
package Paws::WAF::DeleteRateBasedRule;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRateBasedRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::DeleteRateBasedRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::DeleteRateBasedRule - Arguments for method DeleteRateBasedRule on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRateBasedRule on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method DeleteRateBasedRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRateBasedRule.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    my $DeleteRateBasedRuleResponse = $waf->DeleteRateBasedRule(
      ChangeToken => 'MyChangeToken',
      RuleId      => 'MyResourceId',

    );

    # Results:
    my $ChangeToken = $DeleteRateBasedRuleResponse->ChangeToken;

    # Returns a L<Paws::WAF::DeleteRateBasedRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/DeleteRateBasedRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> RuleId => Str

The C<RuleId> of the RateBasedRule that you want to delete. C<RuleId>
is returned by CreateRateBasedRule and by ListRateBasedRules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRateBasedRule in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

