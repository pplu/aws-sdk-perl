
package Paws::MediaLive::StopMultiplex;
  use Moose;
  has MultiplexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'multiplexId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopMultiplex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/multiplexes/{multiplexId}/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::StopMultiplexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::StopMultiplex - Arguments for method StopMultiplex on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopMultiplex on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method StopMultiplex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopMultiplex.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $StopMultiplexResponse = $medialive->StopMultiplex(
      MultiplexId => 'My__string',

    );

    # Results:
    my $Arn                   = $StopMultiplexResponse->Arn;
    my $AvailabilityZones     = $StopMultiplexResponse->AvailabilityZones;
    my $Destinations          = $StopMultiplexResponse->Destinations;
    my $Id                    = $StopMultiplexResponse->Id;
    my $MultiplexSettings     = $StopMultiplexResponse->MultiplexSettings;
    my $Name                  = $StopMultiplexResponse->Name;
    my $PipelinesRunningCount = $StopMultiplexResponse->PipelinesRunningCount;
    my $ProgramCount          = $StopMultiplexResponse->ProgramCount;
    my $State                 = $StopMultiplexResponse->State;
    my $Tags                  = $StopMultiplexResponse->Tags;

    # Returns a L<Paws::MediaLive::StopMultiplexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/StopMultiplex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MultiplexId => Str

The ID of the multiplex.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopMultiplex in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

