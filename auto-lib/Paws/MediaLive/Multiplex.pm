package Paws::MediaLive::Multiplex;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'availabilityZones', traits => ['NameInRequest']);
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::MultiplexOutputDestination]', request_name => 'destinations', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has MultiplexSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexSettings', request_name => 'multiplexSettings', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has PipelinesRunningCount => (is => 'ro', isa => 'Int', request_name => 'pipelinesRunningCount', traits => ['NameInRequest']);
  has ProgramCount => (is => 'ro', isa => 'Int', request_name => 'programCount', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Multiplex

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Multiplex object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Multiplex object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The multiplex object.

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


=head2 Tags => L<Paws::MediaLive::Tags>

  A collection of key-value pairs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

