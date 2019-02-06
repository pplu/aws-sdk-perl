package Paws::SageMaker::TransformJobSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has TransformEndTime => (is => 'ro', isa => 'Str');
  has TransformJobArn => (is => 'ro', isa => 'Str', required => 1);
  has TransformJobName => (is => 'ro', isa => 'Str', required => 1);
  has TransformJobStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TransformJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TransformJobSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TransformJobStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TransformJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides a summary of a transform job. Multiple C<TransformJobSummary>
objects are returned as a list after in response to a ListTransformJobs
call.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  A timestamp that shows when the transform Job was created.


=head2 FailureReason => Str

  If the transform job failed, the reason it failed.


=head2 LastModifiedTime => Str

  Indicates when the transform job was last modified.


=head2 TransformEndTime => Str

  Indicates when the transform job ends on compute instances. For
successful jobs and stopped jobs, this is the exact time recorded after
the results are uploaded. For failed jobs, this is when Amazon
SageMaker detected that the job failed.


=head2 B<REQUIRED> TransformJobArn => Str

  The Amazon Resource Name (ARN) of the transform job.


=head2 B<REQUIRED> TransformJobName => Str

  The name of the transform job.


=head2 B<REQUIRED> TransformJobStatus => Str

  The status of the transform job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

