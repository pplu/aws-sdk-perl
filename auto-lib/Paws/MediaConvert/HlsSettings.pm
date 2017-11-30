package Paws::MediaConvert::HlsSettings;
  use Moose;
  has AudioGroupId => (is => 'ro', isa => 'Str', request_name => 'audioGroupId', traits => ['NameInRequest']);
  has AudioRenditionSets => (is => 'ro', isa => 'Str', request_name => 'audioRenditionSets', traits => ['NameInRequest']);
  has AudioTrackType => (is => 'ro', isa => 'Str', request_name => 'audioTrackType', traits => ['NameInRequest']);
  has IFrameOnlyManifest => (is => 'ro', isa => 'Str', request_name => 'iFrameOnlyManifest', traits => ['NameInRequest']);
  has SegmentModifier => (is => 'ro', isa => 'Str', request_name => 'segmentModifier', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::HlsSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::HlsSettings object:

  $service_obj->Method(Att1 => { AudioGroupId => $value, ..., SegmentModifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::HlsSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioGroupId

=head1 DESCRIPTION

Settings for HLS output groups

=head1 ATTRIBUTES


=head2 AudioGroupId => Str

  Specifies the group to which the audio Rendition belongs.


=head2 AudioRenditionSets => Str

  List all the audio groups that are used with the video output stream.
Input all the audio GROUP-IDs that are associated to the video,
separate by ','.


=head2 AudioTrackType => Str

  


=head2 IFrameOnlyManifest => Str

  


=head2 SegmentModifier => Str

  String concatenated to end of segment filenames. Accepts "Format
Identifiers":#format_identifier_parameters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

