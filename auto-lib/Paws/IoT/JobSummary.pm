package Paws::IoT::JobSummary;
  use Moose;
  has CompletedAt => (is => 'ro', isa => 'Str', request_name => 'completedAt', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has JobArn => (is => 'ro', isa => 'Str', request_name => 'jobArn', traits => ['NameInRequest']);
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TargetSelection => (is => 'ro', isa => 'Str', request_name => 'targetSelection', traits => ['NameInRequest']);
  has ThingGroupId => (is => 'ro', isa => 'Str', request_name => 'thingGroupId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::JobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::JobSummary object:

  $service_obj->Method(Att1 => { CompletedAt => $value, ..., ThingGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::JobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletedAt

=head1 DESCRIPTION

The job summary.

=head1 ATTRIBUTES


=head2 CompletedAt => Str

  The time, in milliseconds since the epoch, when the job completed.


=head2 CreatedAt => Str

  The time, in milliseconds since the epoch, when the job was created.


=head2 JobArn => Str

  The job ARN.


=head2 JobId => Str

  The unique identifier you assigned to this job when it was created.


=head2 LastUpdatedAt => Str

  The time, in milliseconds since the epoch, when the job was last
updated.


=head2 Status => Str

  The job summary status.


=head2 TargetSelection => Str

  Specifies whether the job will continue to run (CONTINUOUS), or will be
complete after all those things specified as targets have completed the
job (SNAPSHOT). If continuous, the job may also be run on a thing when
a change is detected in a target. For example, a job will run on a
thing when the thing is added to a target group, even after the job was
completed by all things originally in the group.


=head2 ThingGroupId => Str

  The ID of the thing group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

