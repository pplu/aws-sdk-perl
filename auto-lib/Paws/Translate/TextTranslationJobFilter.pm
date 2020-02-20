package Paws::Translate::TextTranslationJobFilter;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has SubmittedAfterTime => (is => 'ro', isa => 'Str');
  has SubmittedBeforeTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TextTranslationJobFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Translate::TextTranslationJobFilter object:

  $service_obj->Method(Att1 => { JobName => $value, ..., SubmittedBeforeTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Translate::TextTranslationJobFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->JobName

=head1 DESCRIPTION

Provides information for filtering a list of translation jobs. For more
information, see ListTextTranslationJobs.

=head1 ATTRIBUTES


=head2 JobName => Str

  Filters the list of jobs by name.


=head2 JobStatus => Str

  Filters the list of jobs based by job status.


=head2 SubmittedAfterTime => Str

  Filters the list of jobs based on the time that the job was submitted
for processing and returns only the jobs submitted after the specified
time. Jobs are returned in descending order, newest to oldest.


=head2 SubmittedBeforeTime => Str

  Filters the list of jobs based on the time that the job was submitted
for processing and returns only the jobs submitted before the specified
time. Jobs are returned in ascending order, oldest to newest.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

