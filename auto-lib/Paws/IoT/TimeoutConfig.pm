package Paws::IoT::TimeoutConfig;
  use Moose;
  has InProgressTimeoutInMinutes => (is => 'ro', isa => 'Int', request_name => 'inProgressTimeoutInMinutes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TimeoutConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TimeoutConfig object:

  $service_obj->Method(Att1 => { InProgressTimeoutInMinutes => $value, ..., InProgressTimeoutInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TimeoutConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->InProgressTimeoutInMinutes

=head1 DESCRIPTION

Specifies the amount of time each device has to finish its execution of
the job. A timer is started when the job execution status is set to
C<IN_PROGRESS>. If the job execution status is not set to another
terminal state before the timer expires, it will be automatically set
to C<TIMED_OUT>.

=head1 ATTRIBUTES


=head2 InProgressTimeoutInMinutes => Int

  Specifies the amount of time, in minutes, this device has to finish
execution of this job. The timeout interval can be anywhere between 1
minute and 7 days (1 to 10080 minutes). The in progress timer can't be
updated and will apply to all job executions for the job. Whenever a
job execution remains in the IN_PROGRESS status for longer than this
interval, the job execution will fail and switch to the terminal
C<TIMED_OUT> status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

