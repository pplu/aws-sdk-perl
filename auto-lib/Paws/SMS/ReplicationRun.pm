package Paws::SMS::ReplicationRun;
  use Moose;
  has AmiId => (is => 'ro', isa => 'Str', xmlname => 'amiId', request_name => 'amiId', traits => ['Unwrapped','NameInRequest']);
  has CompletedTime => (is => 'ro', isa => 'Str', xmlname => 'completedTime', request_name => 'completedTime', traits => ['Unwrapped','NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', request_name => 'description', traits => ['Unwrapped','NameInRequest']);
  has ReplicationRunId => (is => 'ro', isa => 'Str', xmlname => 'replicationRunId', request_name => 'replicationRunId', traits => ['Unwrapped','NameInRequest']);
  has ScheduledStartTime => (is => 'ro', isa => 'Str', xmlname => 'scheduledStartTime', request_name => 'scheduledStartTime', traits => ['Unwrapped','NameInRequest']);
  has State => (is => 'ro', isa => 'Str', xmlname => 'state', request_name => 'state', traits => ['Unwrapped','NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', xmlname => 'statusMessage', request_name => 'statusMessage', traits => ['Unwrapped','NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', xmlname => 'type', request_name => 'type', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::ReplicationRun

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::ReplicationRun object:

  $service_obj->Method(Att1 => { AmiId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::ReplicationRun object:

  $result = $service_obj->Method(...);
  $result->Att1->AmiId

=head1 DESCRIPTION

Object representing a Replication Run

=head1 ATTRIBUTES


=head2 AmiId => Str

  


=head2 CompletedTime => Str

  


=head2 Description => Str

  


=head2 ReplicationRunId => Str

  


=head2 ScheduledStartTime => Str

  


=head2 State => Str

  


=head2 StatusMessage => Str

  


=head2 Type => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

