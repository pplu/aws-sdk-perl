package Paws::Batch::AttemptDetail;
  use Moose;
  has Container => (is => 'ro', isa => 'Paws::Batch::AttemptContainerDetail', xmlname => 'container', request_name => 'container', traits => ['Unwrapped','NameInRequest']);
  has StartedAt => (is => 'ro', isa => 'Int', xmlname => 'startedAt', request_name => 'startedAt', traits => ['Unwrapped','NameInRequest']);
  has StatusReason => (is => 'ro', isa => 'Str', xmlname => 'statusReason', request_name => 'statusReason', traits => ['Unwrapped','NameInRequest']);
  has StoppedAt => (is => 'ro', isa => 'Int', xmlname => 'stoppedAt', request_name => 'stoppedAt', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::AttemptDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::AttemptDetail object:

  $service_obj->Method(Att1 => { Container => $value, ..., StoppedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::AttemptDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Container

=head1 DESCRIPTION

An object representing a job attempt.

=head1 ATTRIBUTES


=head2 Container => L<Paws::Batch::AttemptContainerDetail>

  Details about the container in this job attempt.


=head2 StartedAt => Int

  The Unix timestamp for when the attempt was started (when the task
transitioned from the C<PENDING> state to the C<RUNNING> state).


=head2 StatusReason => Str

  A short, human-readable string to provide additional details about the
current status of the job attempt.


=head2 StoppedAt => Int

  The Unix timestamp for when the attempt was stopped (when the task
transitioned from the C<RUNNING> state to the C<STOPPED> state).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

