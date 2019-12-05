package Paws::MediaLive::CreateMultiplex;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'availabilityZones', traits => ['NameInRequest'], required => 1);
  has MultiplexSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexSettings', request_name => 'multiplexSettings', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has RequestId => (is => 'ro', isa => 'Str', request_name => 'requestId', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateMultiplex

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CreateMultiplex object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CreateMultiplex object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

Placeholder documentation for CreateMultiplex

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZones => ArrayRef[Str|Undef]

  A list of availability zones for the multiplex. You must specify
exactly two.


=head2 B<REQUIRED> MultiplexSettings => L<Paws::MediaLive::MultiplexSettings>

  Configuration for a multiplex event.


=head2 B<REQUIRED> Name => Str

  Name of multiplex.


=head2 B<REQUIRED> RequestId => Str

  Unique request ID. This prevents retries from creating multiple
resources.


=head2 Tags => L<Paws::MediaLive::Tags>

  A collection of key-value pairs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

