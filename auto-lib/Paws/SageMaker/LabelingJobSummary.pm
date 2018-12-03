package Paws::SageMaker::LabelingJobSummary;
  use Moose;
  has AnnotationConsolidationLambdaArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has InputConfig => (is => 'ro', isa => 'Paws::SageMaker::LabelingJobInputConfig');
  has LabelCounters => (is => 'ro', isa => 'Paws::SageMaker::LabelCounters', required => 1);
  has LabelingJobArn => (is => 'ro', isa => 'Str', required => 1);
  has LabelingJobName => (is => 'ro', isa => 'Str', required => 1);
  has LabelingJobOutput => (is => 'ro', isa => 'Paws::SageMaker::LabelingJobOutput');
  has LabelingJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has PreHumanTaskLambdaArn => (is => 'ro', isa => 'Str', required => 1);
  has WorkteamArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LabelingJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LabelingJobSummary object:

  $service_obj->Method(Att1 => { AnnotationConsolidationLambdaArn => $value, ..., WorkteamArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LabelingJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AnnotationConsolidationLambdaArn

=head1 DESCRIPTION

Provides summary information about a labeling job.

=head1 ATTRIBUTES


=head2 AnnotationConsolidationLambdaArn => Str

  The Amazon Resource Name (ARN) of the Lambda function used to
consolidate the annotations from individual workers into a label for a
data object. For more information, see Annotation Consolidation
(http://docs.aws.amazon.com/sagemaker/latest/dg/sms-annotation-consolidation.html).


=head2 B<REQUIRED> CreationTime => Str

  The date and time that the job was created (timestamp).


=head2 FailureReason => Str

  If the C<LabelingJobStatus> field is C<Failed>, this field contains a
description of the error.


=head2 InputConfig => L<Paws::SageMaker::LabelingJobInputConfig>

  Input configuration for the labeling job.


=head2 B<REQUIRED> LabelCounters => L<Paws::SageMaker::LabelCounters>

  Counts showing the progress of the labeling job.


=head2 B<REQUIRED> LabelingJobArn => Str

  The Amazon Resource Name (ARN) assigned to the labeling job when it was
created.


=head2 B<REQUIRED> LabelingJobName => Str

  The name of the labeling job.


=head2 LabelingJobOutput => L<Paws::SageMaker::LabelingJobOutput>

  The location of the output produced by the labeling job.


=head2 B<REQUIRED> LabelingJobStatus => Str

  The current status of the labeling job.


=head2 B<REQUIRED> LastModifiedTime => Str

  The date and time that the job was last modified (timestamp).


=head2 B<REQUIRED> PreHumanTaskLambdaArn => Str

  The Amazon Resource Name (ARN) of a Lambda function. The function is
run before each data object is sent to a worker.


=head2 B<REQUIRED> WorkteamArn => Str

  The Amazon Resource Name (ARN) of the work team assigned to the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

