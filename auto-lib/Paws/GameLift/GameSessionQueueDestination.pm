package Paws::GameLift::GameSessionQueueDestination;
  use Moose;
  has DestinationArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GameSessionQueueDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::GameSessionQueueDestination object:

  $service_obj->Method(Att1 => { DestinationArn => $value, ..., DestinationArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::GameSessionQueueDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationArn

=head1 DESCRIPTION

Fleet designated in a game session queue. Requests for new game
sessions in the queue are fulfilled by starting a new game session on
any destination configured for a queue.

=over

=item *

CreateGameSessionQueue

=item *

DescribeGameSessionQueues

=item *

UpdateGameSessionQueue

=item *

DeleteGameSessionQueue

=back


=head1 ATTRIBUTES


=head2 DestinationArn => Str

  Amazon Resource Name (ARN) assigned to fleet or fleet alias. ARNs,
which include a fleet ID or alias ID and a region name, provide a
unique identifier across all regions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

