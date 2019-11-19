# Generated from default/object.tt
package Paws::Transcribe::TranscriptionJob;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Transcribe::Types qw/Transcribe_Media Transcribe_Transcript Transcribe_Settings/;
  has CompletionTime => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has LanguageCode => (is => 'ro', isa => Str);
  has Media => (is => 'ro', isa => Transcribe_Media);
  has MediaFormat => (is => 'ro', isa => Str);
  has MediaSampleRateHertz => (is => 'ro', isa => Int);
  has Settings => (is => 'ro', isa => Transcribe_Settings);
  has Transcript => (is => 'ro', isa => Transcribe_Transcript);
  has TranscriptionJobName => (is => 'ro', isa => Str);
  has TranscriptionJobStatus => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TranscriptionJobStatus' => {
                                             'type' => 'Str'
                                           },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'MediaFormat' => {
                                  'type' => 'Str'
                                },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'MediaSampleRateHertz' => {
                                           'type' => 'Int'
                                         },
               'Media' => {
                            'type' => 'Transcribe_Media',
                            'class' => 'Paws::Transcribe::Media'
                          },
               'Settings' => {
                               'class' => 'Paws::Transcribe::Settings',
                               'type' => 'Transcribe_Settings'
                             },
               'Transcript' => {
                                 'class' => 'Paws::Transcribe::Transcript',
                                 'type' => 'Transcribe_Transcript'
                               },
               'TranscriptionJobName' => {
                                           'type' => 'Str'
                                         },
               'CompletionTime' => {
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

Paws::Transcribe::TranscriptionJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::TranscriptionJob object:

  $service_obj->Method(Att1 => { CompletionTime => $value, ..., TranscriptionJobStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::TranscriptionJob object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionTime

=head1 DESCRIPTION

Describes an asynchronous transcription job that was created with the
C<StartTranscriptionJob> operation.

=head1 ATTRIBUTES


=head2 CompletionTime => Str

  A timestamp that shows when the job was completed.


=head2 CreationTime => Str

  A timestamp that shows when the job was created.


=head2 FailureReason => Str

  If the C<TranscriptionJobStatus> field is C<FAILED>, this field
contains information about why the job failed.

The C<FailureReason> field can contain one of the following values:

=over

=item *

C<Unsupported media format> - The media format specified in the
C<MediaFormat> field of the request isn't valid. See the description of
the C<MediaFormat> field for a list of valid values.

=item *

C<The media format provided does not match the detected media format> -
The media format of the audio file doesn't match the format specified
in the C<MediaFormat> field in the request. Check the media format of
your media file and make sure that the two values match.

=item *

C<Invalid sample rate for audio file> - The sample rate specified in
the C<MediaSampleRateHertz> of the request isn't valid. The sample rate
must be between 8000 and 48000 Hertz.

=item *

C<The sample rate provided does not match the detected sample rate> -
The sample rate in the audio file doesn't match the sample rate
specified in the C<MediaSampleRateHertz> field in the request. Check
the sample rate of your media file and make sure that the two values
match.

=item *

C<Invalid file size: file size too large> - The size of your audio file
is larger than Amazon Transcribe can process. For more information, see
Limits
(https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits)
in the I<Amazon Transcribe Developer Guide>.

=item *

C<Invalid number of channels: number of channels too large> - Your
audio contains more channels than Amazon Transcribe is configured to
process. To request additional channels, see Amazon Transcribe Limits
(https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits-amazon-transcribe)
in the I<Amazon Web Services General Reference>.

=back



=head2 LanguageCode => Str

  The language code for the input speech.


=head2 Media => Transcribe_Media

  An object that describes the input media for the transcription job.


=head2 MediaFormat => Str

  The format of the input media file.


=head2 MediaSampleRateHertz => Int

  The sample rate, in Hertz, of the audio track in the input media file.


=head2 Settings => Transcribe_Settings

  Optional settings for the transcription job. Use these settings to turn
on speaker recognition, to set the maximum number of speakers that
should be identified and to specify a custom vocabulary to use when
processing the transcription job.


=head2 Transcript => Transcribe_Transcript

  An object that describes the output of the transcription job.


=head2 TranscriptionJobName => Str

  The name of the transcription job.


=head2 TranscriptionJobStatus => Str

  The status of the transcription job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

