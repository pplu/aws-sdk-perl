
package Paws::MediaLive::ListReservations;
  use Moose;
  has Codec => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'codec');
  has MaximumBitrate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maximumBitrate');
  has MaximumFramerate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maximumFramerate');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Resolution => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resolution');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType');
  has SpecialFeature => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'specialFeature');
  has VideoQuality => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'videoQuality');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReservations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/reservations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::ListReservationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListReservations - Arguments for method ListReservations on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReservations on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method ListReservations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReservations.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $ListReservationsResponse = $medialive->ListReservations(
      Codec            => 'My__string',    # OPTIONAL
      MaxResults       => 1,               # OPTIONAL
      MaximumBitrate   => 'My__string',    # OPTIONAL
      MaximumFramerate => 'My__string',    # OPTIONAL
      NextToken        => 'My__string',    # OPTIONAL
      Resolution       => 'My__string',    # OPTIONAL
      ResourceType     => 'My__string',    # OPTIONAL
      SpecialFeature   => 'My__string',    # OPTIONAL
      VideoQuality     => 'My__string',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListReservationsResponse->NextToken;
    my $Reservations = $ListReservationsResponse->Reservations;

    # Returns a L<Paws::MediaLive::ListReservationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/ListReservations>

=head1 ATTRIBUTES


=head2 Codec => Str

Filter by codec, 'AVC', 'HEVC', 'MPEG2', or 'AUDIO'



=head2 MaximumBitrate => Str

Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'



=head2 MaximumFramerate => Str

Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'



=head2 MaxResults => Int





=head2 NextToken => Str





=head2 Resolution => Str

Filter by resolution, 'SD', 'HD', or 'UHD'



=head2 ResourceType => Str

Filter by resource type, 'INPUT', 'OUTPUT', or 'CHANNEL'



=head2 SpecialFeature => Str

Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'



=head2 VideoQuality => Str

Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReservations in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

