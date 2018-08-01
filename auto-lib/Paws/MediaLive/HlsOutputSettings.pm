package Paws::MediaLive::HlsOutputSettings;
  use Moose;
  has H265PackagingType => (is => 'ro', isa => 'Str', request_name => 'h265PackagingType', traits => ['NameInRequest']);
  has HlsSettings => (is => 'ro', isa => 'Paws::MediaLive::HlsSettings', request_name => 'hlsSettings', traits => ['NameInRequest'], required => 1);
  has NameModifier => (is => 'ro', isa => 'Str', request_name => 'nameModifier', traits => ['NameInRequest']);
  has SegmentModifier => (is => 'ro', isa => 'Str', request_name => 'segmentModifier', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::HlsOutputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::HlsOutputSettings object:

  $service_obj->Method(Att1 => { H265PackagingType => $value, ..., SegmentModifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::HlsOutputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->H265PackagingType

=head1 DESCRIPTION

Hls Output Settings

=head1 ATTRIBUTES


=head2 H265PackagingType => Str

  Only applicable when this output is referencing an H.265 video
description. Specifies whether MP4 segments should be packaged as HEV1
or HVC1.


=head2 B<REQUIRED> HlsSettings => L<Paws::MediaLive::HlsSettings>

  Settings regarding the underlying stream. These settings are different
for audio-only outputs.


=head2 NameModifier => Str

  String concatenated to the end of the destination filename. Accepts
\"Format Identifiers\":#formatIdentifierParameters.


=head2 SegmentModifier => Str

  String concatenated to end of segment filenames.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

