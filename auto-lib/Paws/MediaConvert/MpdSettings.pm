package Paws::MediaConvert::MpdSettings;
  use Moose;
  has CaptionContainerType => (is => 'ro', isa => 'Str', request_name => 'captionContainerType', traits => ['NameInRequest']);
  has Scte35Esam => (is => 'ro', isa => 'Str', request_name => 'scte35Esam', traits => ['NameInRequest']);
  has Scte35Source => (is => 'ro', isa => 'Str', request_name => 'scte35Source', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::MpdSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::MpdSettings object:

  $service_obj->Method(Att1 => { CaptionContainerType => $value, ..., Scte35Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::MpdSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->CaptionContainerType

=head1 DESCRIPTION

Settings for MP4 segments in DASH

=head1 ATTRIBUTES


=head2 CaptionContainerType => Str

  Use this setting only in DASH output groups that include sidecar TTML
or IMSC captions. You specify sidecar captions in a separate output
from your audio and video. Choose Raw (RAW) for captions in a single
XML file in a raw container. Choose Fragmented MPEG-4 (FRAGMENTED_MP4)
for captions in XML format contained within fragmented MP4 files. This
set of fragmented MP4 files is separate from your video and audio
fragmented MP4 files.


=head2 Scte35Esam => Str

  Use this setting only when you specify SCTE-35 markers from ESAM.
Choose INSERT to put SCTE-35 markers in this output at the insertion
points that you specify in an ESAM XML document. Provide the document
in the setting SCC XML (sccXml).


=head2 Scte35Source => Str

  Ignore this setting unless you have SCTE-35 markers in your input video
file. Choose Passthrough (PASSTHROUGH) if you want SCTE-35 markers that
appear in your input to also appear in this output. Choose None (NONE)
if you don't want those SCTE-35 markers in this output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

