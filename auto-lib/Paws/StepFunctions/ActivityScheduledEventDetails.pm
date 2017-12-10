package Paws::StepFunctions::ActivityScheduledEventDetails;
  use Moose;
  has HeartbeatInSeconds => (is => 'ro', isa => 'Int', request_name => 'heartbeatInSeconds', traits => ['NameInRequest']);
  has Input => (is => 'ro', isa => 'Str', request_name => 'input', traits => ['NameInRequest']);
  has Resource => (is => 'ro', isa => 'Str', request_name => 'resource', traits => ['NameInRequest'], required => 1);
  has TimeoutInSeconds => (is => 'ro', isa => 'Int', request_name => 'timeoutInSeconds', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ActivityScheduledEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::ActivityScheduledEventDetails object:

  $service_obj->Method(Att1 => { HeartbeatInSeconds => $value, ..., TimeoutInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::ActivityScheduledEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->HeartbeatInSeconds

=head1 DESCRIPTION

Contains details about an activity scheduled during an execution.

=head1 ATTRIBUTES


=head2 HeartbeatInSeconds => Int

  The maximum allowed duration between two heartbeats for the activity
task.


=head2 Input => Str

  The JSON data input to the activity task.


=head2 B<REQUIRED> Resource => Str

  The Amazon Resource Name (ARN) of the scheduled activity.


=head2 TimeoutInSeconds => Int

  The maximum allowed duration of the activity task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

