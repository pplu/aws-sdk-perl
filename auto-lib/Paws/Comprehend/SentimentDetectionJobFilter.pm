package Paws::Comprehend::SentimentDetectionJobFilter;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has SubmitTimeAfter => (is => 'ro', isa => 'Str');
  has SubmitTimeBefore => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::SentimentDetectionJobFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::SentimentDetectionJobFilter object:

  $service_obj->Method(Att1 => { JobName => $value, ..., SubmitTimeBefore => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::SentimentDetectionJobFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->JobName

=head1 DESCRIPTION

Provides information for filtering a list of dominant language
detection jobs. For more information, see the operation.

=head1 ATTRIBUTES


=head2 JobName => Str

  Filters on the name of the job.


=head2 JobStatus => Str

  Filters the list of jobs based on job status. Returns only jobs with
the specified status.


=head2 SubmitTimeAfter => Str

  Filters the list of jobs based on the time that the job was submitted
for processing. Returns only jobs submitted after the specified time.
Jobs are returned in descending order, newest to oldest.


=head2 SubmitTimeBefore => Str

  Filters the list of jobs based on the time that the job was submitted
for processing. Returns only jobs submitted before the specified time.
Jobs are returned in ascending order, oldest to newest.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

