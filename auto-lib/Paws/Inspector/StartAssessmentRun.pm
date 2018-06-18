
package Paws::Inspector::StartAssessmentRun;
  use Moose;
  has AssessmentRunName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentRunName' );
  has AssessmentTemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTemplateArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAssessmentRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::StartAssessmentRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::StartAssessmentRun - Arguments for method StartAssessmentRun on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAssessmentRun on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method StartAssessmentRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAssessmentRun.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
   # Start assessment run
   # Starts the assessment run specified by the ARN of the assessment template.
   # For this API to function properly, you must not exceed the limit of running
   # up to 500 concurrent agents per AWS account.
    my $StartAssessmentRunResponse = $inspector->StartAssessmentRun(
      {
        'AssessmentRunName' => 'examplerun',
        'AssessmentTemplateArn' =>
'arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-it5r2S4T'
      }
    );

    # Results:
    my $assessmentRunArn = $StartAssessmentRunResponse->assessmentRunArn;

    # Returns a L<Paws::Inspector::StartAssessmentRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/StartAssessmentRun>

=head1 ATTRIBUTES


=head2 AssessmentRunName => Str

You can specify the name for the assessment run. The name must be
unique for the assessment template whose ARN is used to start the
assessment run.



=head2 B<REQUIRED> AssessmentTemplateArn => Str

The ARN of the assessment template of the assessment run that you want
to start.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAssessmentRun in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

