package Paws::MediaConvert::Queue;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastUpdated => (is => 'ro', isa => 'Str', request_name => 'lastUpdated', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has ProgressingJobsCount => (is => 'ro', isa => 'Int', request_name => 'progressingJobsCount', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has SubmittedJobsCount => (is => 'ro', isa => 'Int', request_name => 'submittedJobsCount', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Queue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Queue object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Queue object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

MediaConvert jobs are submitted to a queue. Unless specified otherwise
jobs are submitted to a built-in default queue. User can create
additional queues to separate the jobs of different categories or
priority.

=head1 ATTRIBUTES


=head2 Arn => Str

  An identifier for this resource that is unique within all of AWS.


=head2 CreatedAt => Str

  The timestamp in epoch seconds for queue creation.


=head2 Description => Str

  An optional description you create for each queue.


=head2 LastUpdated => Str

  The timestamp in epoch seconds when the queue was last updated.


=head2 B<REQUIRED> Name => Str

  A name you create for each queue. Each name must be unique within your
account.


=head2 ProgressingJobsCount => Int

  Estimated number of jobs in PROGRESSING status.


=head2 Status => Str

  


=head2 SubmittedJobsCount => Int

  Estimated number of jobs in SUBMITTED status.


=head2 Type => Str

  A queue can be of two types: system or custom. System or built-in
queues can't be modified or deleted by the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

