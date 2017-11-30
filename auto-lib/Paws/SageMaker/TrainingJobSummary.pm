package Paws::SageMaker::TrainingJobSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has TrainingEndTime => (is => 'ro', isa => 'Str');
  has TrainingJobArn => (is => 'ro', isa => 'Str', required => 1);
  has TrainingJobName => (is => 'ro', isa => 'Str', required => 1);
  has TrainingJobStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrainingJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrainingJobSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TrainingJobStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrainingJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides summary information about a training job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  A timestamp that shows when the training job was created.


=head2 LastModifiedTime => Str

  Timestamp when the training job was last modified.


=head2 TrainingEndTime => Str

  A timestamp that shows when the training job ended. This field is set
only if the training job has one of the terminal statuses
(C<Completed>, C<Failed>, or C<Stopped>).


=head2 B<REQUIRED> TrainingJobArn => Str

  The Amazon Resource Name (ARN) of the training job.


=head2 B<REQUIRED> TrainingJobName => Str

  The name of the training job that you want a summary for.


=head2 B<REQUIRED> TrainingJobStatus => Str

  The status of the training job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

