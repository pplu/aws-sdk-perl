package Paws::SageMaker::LabelingJobAlgorithmsConfig;
  use Moose;
  has InitialActiveLearningModelArn => (is => 'ro', isa => 'Str');
  has LabelingJobAlgorithmSpecificationArn => (is => 'ro', isa => 'Str', required => 1);
  has LabelingJobResourceConfig => (is => 'ro', isa => 'Paws::SageMaker::LabelingJobResourceConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LabelingJobAlgorithmsConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LabelingJobAlgorithmsConfig object:

  $service_obj->Method(Att1 => { InitialActiveLearningModelArn => $value, ..., LabelingJobResourceConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LabelingJobAlgorithmsConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->InitialActiveLearningModelArn

=head1 DESCRIPTION

Provides configuration information for auto-labeling of your data
objects. A C<LabelingJobAlgorithmsConfig> object must be supplied in
order to use auto-labeling.

=head1 ATTRIBUTES


=head2 InitialActiveLearningModelArn => Str

  At the end of an auto-label job Amazon SageMaker Ground Truth sends the
Amazon Resource Nam (ARN) of the final model used for auto-labeling.
You can use this model as the starting point for subsequent similar
jobs by providing the ARN of the model here.


=head2 B<REQUIRED> LabelingJobAlgorithmSpecificationArn => Str

  Specifies the Amazon Resource Name (ARN) of the algorithm used for
auto-labeling. You must select one of the following ARNs:

=over

=item *

I<Image classification>

C<arn:aws:sagemaker:I<region>:027400017018:labeling-job-algorithm-specification/image-classification>

=item *

I<Text classification>

C<arn:aws:sagemaker:I<region>:027400017018:labeling-job-algorithm-specification/text-classification>

=item *

I<Object detection>

C<arn:aws:sagemaker:I<region>:027400017018:labeling-job-algorithm-specification/object-detection>

=back



=head2 LabelingJobResourceConfig => L<Paws::SageMaker::LabelingJobResourceConfig>

  Provides configuration information for a labeling job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

