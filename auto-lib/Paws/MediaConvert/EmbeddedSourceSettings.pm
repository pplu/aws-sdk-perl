package Paws::MediaConvert::EmbeddedSourceSettings;
  use Moose;
  has Convert608To708 => (is => 'ro', isa => 'Str', request_name => 'convert608To708', traits => ['NameInRequest']);
  has Source608ChannelNumber => (is => 'ro', isa => 'Int', request_name => 'source608ChannelNumber', traits => ['NameInRequest']);
  has Source608TrackNumber => (is => 'ro', isa => 'Int', request_name => 'source608TrackNumber', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::EmbeddedSourceSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::EmbeddedSourceSettings object:

  $service_obj->Method(Att1 => { Convert608To708 => $value, ..., Source608TrackNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::EmbeddedSourceSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Convert608To708

=head1 DESCRIPTION

Settings for embedded captions Source

=head1 ATTRIBUTES


=head2 Convert608To708 => Str

  


=head2 Source608ChannelNumber => Int

  Specifies the 608/708 channel number within the video track from which
to extract captions. Unused for passthrough.


=head2 Source608TrackNumber => Int

  Specifies the video track index used for extracting captions. The
system only supports one input video track, so this should always be
set to '1'.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

