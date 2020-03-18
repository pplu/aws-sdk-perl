package Paws::SageMaker::ProcessingJobSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has ExitMessage => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has ProcessingEndTime => (is => 'ro', isa => 'Str');
  has ProcessingJobArn => (is => 'ro', isa => 'Str', required => 1);
  has ProcessingJobName => (is => 'ro', isa => 'Str', required => 1);
  has ProcessingJobStatus => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ProcessingJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ProcessingJobSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., ProcessingJobStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ProcessingJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Summary of information about a processing job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  The time at which the processing job was created.


=head2 ExitMessage => Str

  An optional string, up to one KB in size, that contains metadata from
the processing container when the processing job exits.


=head2 FailureReason => Str

  A string, up to one KB in size, that contains the reason a processing
job failed, if it failed.


=head2 LastModifiedTime => Str

  A timestamp that indicates the last time the processing job was
modified.


=head2 ProcessingEndTime => Str

  The time at which the processing job completed.


=head2 B<REQUIRED> ProcessingJobArn => Str

  The Amazon Resource Name (ARN) of the processing job..


=head2 B<REQUIRED> ProcessingJobName => Str

  The name of the processing job.


=head2 B<REQUIRED> ProcessingJobStatus => Str

  The status of the processing job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

