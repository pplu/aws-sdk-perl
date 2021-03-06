# Generated by default/object.tt
package Paws::Connect::RoutingProfileQueueConfigSummary;
  use Moose;
  has Channel => (is => 'ro', isa => 'Str', required => 1);
  has Delay => (is => 'ro', isa => 'Int', required => 1);
  has Priority => (is => 'ro', isa => 'Int', required => 1);
  has QueueArn => (is => 'ro', isa => 'Str', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', required => 1);
  has QueueName => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::RoutingProfileQueueConfigSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::RoutingProfileQueueConfigSummary object:

  $service_obj->Method(Att1 => { Channel => $value, ..., QueueName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::RoutingProfileQueueConfigSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Channel

=head1 DESCRIPTION

Contains summary information about a routing profile queue.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Channel => Str

The channels this queue supports.


=head2 B<REQUIRED> Delay => Int

The delay, in seconds, that a contact should be in the queue before
they are routed to an available agent. For more information, see
Queues: priority and delay
(https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html)
in the I<Amazon Connect Administrator Guide>.


=head2 B<REQUIRED> Priority => Int

The order in which contacts are to be handled for the queue. For more
information, see Queues: priority and delay
(https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing-profiles-priority.html).


=head2 B<REQUIRED> QueueArn => Str

The Amazon Resource Name (ARN) of the queue.


=head2 B<REQUIRED> QueueId => Str

The identifier for the queue.


=head2 B<REQUIRED> QueueName => Str

The name of the queue.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

