
package Paws::XRay::DeleteSamplingRule;
  use Moose;
  has RuleARN => (is => 'ro', isa => 'Str');
  has RuleName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSamplingRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteSamplingRule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::DeleteSamplingRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::DeleteSamplingRule - Arguments for method DeleteSamplingRule on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSamplingRule on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method DeleteSamplingRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSamplingRule.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $DeleteSamplingRuleResult = $xray->DeleteSamplingRule(
      RuleARN  => 'MyString',    # OPTIONAL
      RuleName => 'MyString',    # OPTIONAL
    );

    # Results:
    my $SamplingRuleRecord = $DeleteSamplingRuleResult->SamplingRuleRecord;

    # Returns a L<Paws::XRay::DeleteSamplingRuleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/DeleteSamplingRule>

=head1 ATTRIBUTES


=head2 RuleARN => Str

The ARN of the sampling rule. Specify a rule by either name or ARN, but
not both.



=head2 RuleName => Str

The name of the sampling rule. Specify a rule by either name or ARN,
but not both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSamplingRule in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

