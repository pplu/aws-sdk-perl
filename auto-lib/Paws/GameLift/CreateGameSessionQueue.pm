
package Paws::GameLift::CreateGameSessionQueue;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameSessionQueueDestination]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has TimeoutInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGameSessionQueue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateGameSessionQueueOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateGameSessionQueue - Arguments for method CreateGameSessionQueue on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGameSessionQueue on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method CreateGameSessionQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGameSessionQueue.

As an example:

  $service_obj->CreateGameSessionQueue(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::GameLift::GameSessionQueueDestination>]

List of fleets that can be used to fulfill game session placement
requests in the queue. Fleets are identified by either a fleet ARN or a
fleet alias ARN. Destinations are listed in default preference order.



=head2 B<REQUIRED> Name => Str

Descriptive label that is associated with queue. Queue names must be
unique within each region.



=head2 TimeoutInSeconds => Int

Maximum time, in seconds, that a new game session placement request
remains in the queue. When a request exceeds this time, the game
session placement changes to a TIMED_OUT status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGameSessionQueue in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

