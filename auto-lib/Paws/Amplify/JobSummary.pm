package Paws::Amplify::JobSummary;
  use Moose;
  has CommitId => (is => 'ro', isa => 'Str', request_name => 'commitId', traits => ['NameInRequest'], required => 1);
  has CommitMessage => (is => 'ro', isa => 'Str', request_name => 'commitMessage', traits => ['NameInRequest'], required => 1);
  has CommitTime => (is => 'ro', isa => 'Str', request_name => 'commitTime', traits => ['NameInRequest'], required => 1);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has JobArn => (is => 'ro', isa => 'Str', request_name => 'jobArn', traits => ['NameInRequest'], required => 1);
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest'], required => 1);
  has JobType => (is => 'ro', isa => 'Str', request_name => 'jobType', traits => ['NameInRequest'], required => 1);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::JobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::JobSummary object:

  $service_obj->Method(Att1 => { CommitId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::JobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CommitId

=head1 DESCRIPTION

Structure for the summary of a Job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommitId => Str

  Commit Id from 3rd party repository provider for the Job.


=head2 B<REQUIRED> CommitMessage => Str

  Commit message from 3rd party repository provider for the Job.


=head2 B<REQUIRED> CommitTime => Str

  Commit date / time for the Job.


=head2 EndTime => Str

  End date / time for the Job.


=head2 B<REQUIRED> JobArn => Str

  Arn for the Job.


=head2 B<REQUIRED> JobId => Str

  Unique Id for the Job.


=head2 B<REQUIRED> JobType => Str

  Type for the Job.


=head2 B<REQUIRED> StartTime => Str

  Start date / time for the Job.


=head2 B<REQUIRED> Status => Str

  Status for the Job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

