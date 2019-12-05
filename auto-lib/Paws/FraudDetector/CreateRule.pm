
package Paws::FraudDetector::CreateRule;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' , required => 1);
  has Expression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expression' , required => 1);
  has Language => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'language' , required => 1);
  has Outcomes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'outcomes' , required => 1);
  has RuleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ruleId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::CreateRuleResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::CreateRule - Arguments for method CreateRule on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRule on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method CreateRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRule.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $CreateRuleResult = $frauddetector->CreateRule(
      DetectorId  => 'Myidentifier',
      Expression  => 'MyruleExpression',
      Language    => 'DETECTORPL',
      Outcomes    => [ 'Mystring', ... ],
      RuleId      => 'Myidentifier',
      Description => 'Mydescription',       # OPTIONAL
    );

    # Results:
    my $Rule = $CreateRuleResult->Rule;

    # Returns a L<Paws::FraudDetector::CreateRuleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/CreateRule>

=head1 ATTRIBUTES


=head2 Description => Str

The rule description.



=head2 B<REQUIRED> DetectorId => Str

The detector ID for the rule's parent detector.



=head2 B<REQUIRED> Expression => Str

The rule expression.



=head2 B<REQUIRED> Language => Str

The language of the rule.

Valid values are: C<"DETECTORPL">

=head2 B<REQUIRED> Outcomes => ArrayRef[Str|Undef]

The outcome or outcomes returned when the rule expression matches.



=head2 B<REQUIRED> RuleId => Str

The rule ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRule in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

