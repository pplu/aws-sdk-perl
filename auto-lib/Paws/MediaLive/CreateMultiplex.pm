
package Paws::MediaLive::CreateMultiplex;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'availabilityZones', required => 1);
  has MultiplexSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexSettings', traits => ['NameInRequest'], request_name => 'multiplexSettings', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMultiplex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/multiplexes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::CreateMultiplexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateMultiplex - Arguments for method CreateMultiplex on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMultiplex on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method CreateMultiplex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMultiplex.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $CreateMultiplexResponse = $medialive->CreateMultiplex(
      AvailabilityZones => [ 'My__string', ... ],
      MultiplexSettings => {
        TransportStreamBitrate => 1,    # min: 1000000, max: 100000000
        TransportStreamId      => 1,    # max: 65535
        MaximumVideoBufferDelayMilliseconds =>
          1,                            # min: 1000, max: 3000; OPTIONAL
        TransportStreamReservedBitrate => 1,    # max: 100000000; OPTIONAL
      },
      Name      => 'My__string',
      RequestId => 'My__string',
      Tags      => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Multiplex = $CreateMultiplexResponse->Multiplex;

    # Returns a L<Paws::MediaLive::CreateMultiplexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/CreateMultiplex>

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

This class forms part of L<Paws>, documenting arguments for method CreateMultiplex in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

