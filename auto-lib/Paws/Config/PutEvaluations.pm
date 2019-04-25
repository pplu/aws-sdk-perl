
package Paws::Config::PutEvaluations;
  use Moose;
  has Evaluations => (is => 'ro', isa => 'ArrayRef[Paws::Config::Evaluation]');
  has ResultToken => (is => 'ro', isa => 'Str', required => 1);
  has TestMode => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEvaluations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::PutEvaluationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutEvaluations - Arguments for method PutEvaluations on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEvaluations on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutEvaluations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEvaluations.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutEvaluationsResponse = $config->PutEvaluations(
      ResultToken => 'MyString',
      Evaluations => [
        {
          ComplianceResourceId => 'MyBaseResourceId',    # min: 1, max: 768
          ComplianceResourceType =>
            'MyStringWithCharLimit256',                  # min: 1, max: 256
          ComplianceType => 'COMPLIANT'
          , # values: COMPLIANT, NON_COMPLIANT, NOT_APPLICABLE, INSUFFICIENT_DATA
          OrderingTimestamp => '1970-01-01T01:00:00',
          Annotation        => 'MyStringWithCharLimit256',    # min: 1, max: 256
        },
        ...
      ],                                                      # OPTIONAL
      TestMode => 1,                                          # OPTIONAL
    );

    # Results:
    my $FailedEvaluations = $PutEvaluationsResponse->FailedEvaluations;

    # Returns a L<Paws::Config::PutEvaluationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutEvaluations>

=head1 ATTRIBUTES


=head2 Evaluations => ArrayRef[L<Paws::Config::Evaluation>]

The assessments that the AWS Lambda function performs. Each evaluation
identifies an AWS resource and indicates whether it complies with the
AWS Config rule that invokes the AWS Lambda function.



=head2 B<REQUIRED> ResultToken => Str

An encrypted token that associates an evaluation with an AWS Config
rule. Identifies the rule and the event that triggered the evaluation.



=head2 TestMode => Bool

Use this parameter to specify a test run for C<PutEvaluations>. You can
verify whether your AWS Lambda function will deliver evaluation results
to AWS Config. No updates occur to your existing evaluations, and
evaluation results are not sent to AWS Config.

When C<TestMode> is C<true>, C<PutEvaluations> doesn't require a valid
value for the C<ResultToken> parameter, but the value cannot be null.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEvaluations in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

