
package Paws::MediaLive::StartMultiplexResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'availabilityZones');
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::MultiplexOutputDestination]', traits => ['NameInRequest'], request_name => 'destinations');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has MultiplexSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexSettings', traits => ['NameInRequest'], request_name => 'multiplexSettings');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PipelinesRunningCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'pipelinesRunningCount');
  has ProgramCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'programCount');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::StartMultiplexResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The unique arn of the multiplex.


=head2 AvailabilityZones => ArrayRef[Str|Undef]

A list of availability zones for the multiplex.


=head2 Destinations => ArrayRef[L<Paws::MediaLive::MultiplexOutputDestination>]

A list of the multiplex output destinations.


=head2 Id => Str

The unique id of the multiplex.


=head2 MultiplexSettings => L<Paws::MediaLive::MultiplexSettings>

Configuration for a multiplex event.


=head2 Name => Str

The name of the multiplex.


=head2 PipelinesRunningCount => Int

The number of currently healthy pipelines.


=head2 ProgramCount => Int

The number of programs in the multiplex.


=head2 State => Str

The current state of the multiplex.

Valid values are: C<"CREATING">, C<"CREATE_FAILED">, C<"IDLE">, C<"STARTING">, C<"RUNNING">, C<"RECOVERING">, C<"STOPPING">, C<"DELETING">, C<"DELETED">
=head2 Tags => L<Paws::MediaLive::Tags>

A collection of key-value pairs.


=head2 _request_id => Str


=cut

