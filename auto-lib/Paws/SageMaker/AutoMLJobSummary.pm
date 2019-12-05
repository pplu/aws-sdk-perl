package Paws::SageMaker::AutoMLJobSummary;
  use Moose;
  has AutoMLJobArn => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobName => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobSecondaryStatus => (is => 'ro', isa => 'Str', required => 1);
  has AutoMLJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AutoMLJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AutoMLJobSummary object:

  $service_obj->Method(Att1 => { AutoMLJobArn => $value, ..., LastModifiedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AutoMLJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoMLJobArn

=head1 DESCRIPTION

Provides a summary about a job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoMLJobArn => Str

  The ARN of the job.


=head2 B<REQUIRED> AutoMLJobName => Str

  The name of the object you are requesting.


=head2 B<REQUIRED> AutoMLJobSecondaryStatus => Str

  The job's secondary status.


=head2 B<REQUIRED> AutoMLJobStatus => Str

  The job's status.


=head2 B<REQUIRED> CreationTime => Str

  When the job was created.


=head2 EndTime => Str

  The end time.


=head2 FailureReason => Str

  The failure reason.


=head2 B<REQUIRED> LastModifiedTime => Str

  When the job was last modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

