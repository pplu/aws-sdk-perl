# Generated from default/object.tt
package Paws::AlexaForBusiness::Audio;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has Locale => (is => 'ro', isa => Str, required => 1);
  has Location => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Locale' => 1,
                    'Location' => 1
                  },
  'types' => {
               'Location' => {
                               'type' => 'Str'
                             },
               'Locale' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::Audio

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::Audio object:

  $service_obj->Method(Att1 => { Locale => $value, ..., Location => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::Audio object:

  $result = $service_obj->Method(...);
  $result->Att1->Locale

=head1 DESCRIPTION

The audio message. There is a 1 MB limit on the audio file input and
the only supported format is MP3. To convert your MP3 audio files to an
Alexa-friendly,

required codec version (MPEG version 2) and bit rate (48 kbps), you
might use converter software. One option for this is a command-line
tool, FFmpeg. For more information, see FFmpeg
(https://www.ffmpeg.org/). The following command converts the provided
E<lt>input-fileE<gt> to an MP3 file that is played in the announcement:

C<ffmpeg -i E<lt>input-fileE<gt> -ac 2 -codec:a libmp3lame -b:a 48k -ar
16000 E<lt>output-file.mp3E<gt>>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Locale => Str

  The locale of the audio message. Currently, en-US is supported.


=head2 B<REQUIRED> Location => Str

  The location of the audio file. Currently, S3 URLs are supported. Only
S3 locations comprised of safe characters are valid. For more
information, see Safe Characters
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#Safe%20Characters).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

