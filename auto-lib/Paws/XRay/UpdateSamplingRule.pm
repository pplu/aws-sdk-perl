
package Paws::XRay::UpdateSamplingRule;
  use Moose;
  has SamplingRuleUpdate => (is => 'ro', isa => 'Paws::XRay::SamplingRuleUpdate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSamplingRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateSamplingRule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::UpdateSamplingRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::UpdateSamplingRule - Arguments for method UpdateSamplingRule on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSamplingRule on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method UpdateSamplingRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSamplingRule.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $UpdateSamplingRuleResult = $xray->UpdateSamplingRule(
      SamplingRuleUpdate => {
        Attributes => {
          'MyAttributeKey' =>
            'MyAttributeValue',   # key: min: 1, max: 32, value: min: 1, max: 32
        },    # max: 5; OPTIONAL
        FixedRate     => 1,                  # OPTIONAL
        HTTPMethod    => 'MyHTTPMethod',     # max: 10; OPTIONAL
        Host          => 'MyHost',           # max: 64; OPTIONAL
        Priority      => 1,                  # OPTIONAL
        ReservoirSize => 1,                  # OPTIONAL
        ResourceARN   => 'MyResourceARN',    # max: 500; OPTIONAL
        RuleARN       => 'MyString',         # OPTIONAL
        RuleName      => 'MyRuleName',       # min: 1, max: 32; OPTIONAL
        ServiceName   => 'MyServiceName',    # max: 64; OPTIONAL
        ServiceType   => 'MyServiceType',    # max: 64; OPTIONAL
        URLPath       => 'MyURLPath',        # max: 128; OPTIONAL
      },

    );

    # Results:
    my $SamplingRuleRecord = $UpdateSamplingRuleResult->SamplingRuleRecord;

    # Returns a L<Paws::XRay::UpdateSamplingRuleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/UpdateSamplingRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SamplingRuleUpdate => L<Paws::XRay::SamplingRuleUpdate>

The rule and fields to change.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSamplingRule in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

