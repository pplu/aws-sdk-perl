
package Paws::MediaLive::UpdateMultiplex;
  use Moose;
  has MultiplexSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexSettings', traits => ['NameInRequest'], request_name => 'multiplexSettings');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMultiplex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/multiplexes/{multiplexId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::UpdateMultiplexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateMultiplex - Arguments for method UpdateMultiplex on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMultiplex on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method UpdateMultiplex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMultiplex.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $UpdateMultiplexResponse = $medialive->UpdateMultiplex(
      MultiplexSettings => {
        TransportStreamBitrate              => 1, # min: 1000000, max: 100000000
        TransportStreamId                   => 1, # max: 65535
        MaximumVideoBufferDelayMilliseconds =>
          1,    # min: 800, max: 3000; OPTIONAL
        TransportStreamReservedBitrate => 1,    # max: 100000000; OPTIONAL
      },    # OPTIONAL
      Name => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Multiplex = $UpdateMultiplexResponse->Multiplex;

    # Returns a L<Paws::MediaLive::UpdateMultiplexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/UpdateMultiplex>

=head1 ATTRIBUTES


=head2 MultiplexSettings => L<Paws::MediaLive::MultiplexSettings>

The new settings for a multiplex.



=head2 Name => Str

Name of the multiplex.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMultiplex in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

