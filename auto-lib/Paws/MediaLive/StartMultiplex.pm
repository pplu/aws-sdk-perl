
package Paws::MediaLive::StartMultiplex;
  use Moose;
  has MultiplexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'multiplexId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMultiplex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/multiplexes/{multiplexId}/start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::StartMultiplexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::StartMultiplex - Arguments for method StartMultiplex on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMultiplex on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method StartMultiplex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMultiplex.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $StartMultiplexResponse = $medialive->StartMultiplex(
      MultiplexId => 'My__string',

    );

    # Results:
    my $Arn                   = $StartMultiplexResponse->Arn;
    my $AvailabilityZones     = $StartMultiplexResponse->AvailabilityZones;
    my $Destinations          = $StartMultiplexResponse->Destinations;
    my $Id                    = $StartMultiplexResponse->Id;
    my $MultiplexSettings     = $StartMultiplexResponse->MultiplexSettings;
    my $Name                  = $StartMultiplexResponse->Name;
    my $PipelinesRunningCount = $StartMultiplexResponse->PipelinesRunningCount;
    my $ProgramCount          = $StartMultiplexResponse->ProgramCount;
    my $State                 = $StartMultiplexResponse->State;
    my $Tags                  = $StartMultiplexResponse->Tags;

    # Returns a L<Paws::MediaLive::StartMultiplexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/StartMultiplex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MultiplexId => Str

The ID of the multiplex.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMultiplex in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

