package Paws::SageMaker::LabelingJobOutput;
  use Moose;
  has FinalActiveLearningModelArn => (is => 'ro', isa => 'Str');
  has OutputDatasetS3Uri => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LabelingJobOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LabelingJobOutput object:

  $service_obj->Method(Att1 => { FinalActiveLearningModelArn => $value, ..., OutputDatasetS3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LabelingJobOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->FinalActiveLearningModelArn

=head1 DESCRIPTION

Specifies the location of the output produced by the labeling job.

=head1 ATTRIBUTES


=head2 FinalActiveLearningModelArn => Str

  The Amazon Resource Name (ARN) for the most recent Amazon SageMaker
model trained as part of automated data labeling.


=head2 B<REQUIRED> OutputDatasetS3Uri => Str

  The Amazon S3 bucket location of the manifest file for labeled data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

