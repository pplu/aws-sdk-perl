# Generated from default/object.tt
package Paws::MediaLive::ReservationResourceSpecification;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw//;
  has ChannelClass => (is => 'ro', isa => Str);
  has Codec => (is => 'ro', isa => Str);
  has MaximumBitrate => (is => 'ro', isa => Str);
  has MaximumFramerate => (is => 'ro', isa => Str);
  has Resolution => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has SpecialFeature => (is => 'ro', isa => Str);
  has VideoQuality => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Codec' => {
                            'type' => 'Str'
                          },
               'VideoQuality' => {
                                   'type' => 'Str'
                                 },
               'MaximumFramerate' => {
                                       'type' => 'Str'
                                     },
               'MaximumBitrate' => {
                                     'type' => 'Str'
                                   },
               'ChannelClass' => {
                                   'type' => 'Str'
                                 },
               'Resolution' => {
                                 'type' => 'Str'
                               },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'SpecialFeature' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'Codec' => 'codec',
                       'VideoQuality' => 'videoQuality',
                       'MaximumFramerate' => 'maximumFramerate',
                       'MaximumBitrate' => 'maximumBitrate',
                       'ChannelClass' => 'channelClass',
                       'Resolution' => 'resolution',
                       'ResourceType' => 'resourceType',
                       'SpecialFeature' => 'specialFeature'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ReservationResourceSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ReservationResourceSpecification object:

  $service_obj->Method(Att1 => { ChannelClass => $value, ..., VideoQuality => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ReservationResourceSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelClass

=head1 DESCRIPTION

Resource configuration (codec, resolution, bitrate, ...)

=head1 ATTRIBUTES


=head2 ChannelClass => Str

  Channel class, e.g. 'STANDARD'


=head2 Codec => Str

  Codec, e.g. 'AVC'


=head2 MaximumBitrate => Str

  Maximum bitrate, e.g. 'MAX_20_MBPS'


=head2 MaximumFramerate => Str

  Maximum framerate, e.g. 'MAX_30_FPS' (Outputs only)


=head2 Resolution => Str

  Resolution, e.g. 'HD'


=head2 ResourceType => Str

  Resource type, 'INPUT', 'OUTPUT', or 'CHANNEL'


=head2 SpecialFeature => Str

  Special feature, e.g. 'AUDIO_NORMALIZATION' (Channels only)


=head2 VideoQuality => Str

  Video quality, e.g. 'STANDARD' (Outputs only)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

