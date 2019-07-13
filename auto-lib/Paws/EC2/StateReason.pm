package Paws::EC2::StateReason;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StateReason

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::StateReason object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::StateReason object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Code => Str

  The reason code for the state change.


=head2 Message => Str

  The message for the state change.

=over

=item *

C<Server.InsufficientInstanceCapacity>: There was insufficient capacity
available to satisfy the launch request.

=item *

C<Server.InternalError>: An internal error caused the instance to
terminate during launch.

=item *

C<Server.ScheduledStop>: The instance was stopped due to a scheduled
retirement.

=item *

C<Server.SpotInstanceShutdown>: The instance was stopped because the
number of Spot requests with a maximum price equal to or higher than
the Spot price exceeded available capacity or because of an increase in
the Spot price.

=item *

C<Server.SpotInstanceTermination>: The instance was terminated because
the number of Spot requests with a maximum price equal to or higher
than the Spot price exceeded available capacity or because of an
increase in the Spot price.

=item *

C<Client.InstanceInitiatedShutdown>: The instance was shut down using
the C<shutdown -h> command from the instance.

=item *

C<Client.InstanceTerminated>: The instance was terminated or rebooted
during AMI creation.

=item *

C<Client.InternalError>: A client error caused the instance to
terminate during launch.

=item *

C<Client.InvalidSnapshot.NotFound>: The specified snapshot was not
found.

=item *

C<Client.UserInitiatedHibernate>: Hibernation was initiated on the
instance.

=item *

C<Client.UserInitiatedShutdown>: The instance was shut down using the
Amazon EC2 API.

=item *

C<Client.VolumeLimitExceeded>: The limit on the number of EBS volumes
or total storage was exceeded. Decrease usage or request an increase in
your account limits.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
