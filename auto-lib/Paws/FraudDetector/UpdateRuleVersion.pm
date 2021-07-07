
package Paws::FraudDetector::UpdateRuleVersion;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Expression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expression' , required => 1);
  has Language => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'language' , required => 1);
  has Outcomes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'outcomes' , required => 1);
  has Rule => (is => 'ro', isa => 'Paws::FraudDetector::Rule', traits => ['NameInRequest'], request_name => 'rule' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRuleVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::UpdateRuleVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::UpdateRuleVersion - Arguments for method UpdateRuleVersion on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRuleVersion on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method UpdateRuleVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRuleVersion.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $UpdateRuleVersionResult = $frauddetector->UpdateRuleVersion(
      Expression => 'MyruleExpression',
      Language   => 'DETECTORPL',
      Outcomes   => [ 'Mystring', ... ],
      Rule       => {
        DetectorId  => 'Myidentifier',                  # min: 1, max: 64
        RuleId      => 'Myidentifier',                  # min: 1, max: 64
        RuleVersion => 'MywholeNumberVersionString',    # min: 1, max: 5

      },
      Description => 'Mydescription',                   # OPTIONAL
      Tags        => [
        {
          Key   => 'MytagKey',      # min: 1, max: 128
          Value => 'MytagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Rule = $UpdateRuleVersionResult->Rule;

    # Returns a L<Paws::FraudDetector::UpdateRuleVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/UpdateRuleVersion>

=head1 ATTRIBUTES


=head2 Description => Str

The description.



=head2 B<REQUIRED> Expression => Str

The rule expression.



=head2 B<REQUIRED> Language => Str

The language.

Valid values are: C<"DETECTORPL">

=head2 B<REQUIRED> Outcomes => ArrayRef[Str|Undef]

The outcomes.



=head2 B<REQUIRED> Rule => L<Paws::FraudDetector::Rule>

The rule to update.



=head2 Tags => ArrayRef[L<Paws::FraudDetector::Tag>]

The tags to assign to the rule version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRuleVersion in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

