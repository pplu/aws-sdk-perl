
package Paws::Inspector::StopAssessmentRun;
  use Moose;
  has AssessmentRunArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentRunArn' , required => 1);
  has StopAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stopAction' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopAssessmentRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::StopAssessmentRun - Arguments for method StopAssessmentRun on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopAssessmentRun on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method StopAssessmentRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopAssessmentRun.

As an example:

  $service_obj->StopAssessmentRun(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/StopAssessmentRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRunArn => Str

The ARN of the assessment run that you want to stop.



=head2 StopAction => Str

An input option that can be set to either START_EVALUATION or
SKIP_EVALUATION. START_EVALUATION (the default value), stops the AWS
agent from collecting data and begins the results evaluation and the
findings generation process. SKIP_EVALUATION cancels the assessment run
immediately, after which no findings are generated.

Valid values are: C<"START_EVALUATION">, C<"SKIP_EVALUATION">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopAssessmentRun in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

