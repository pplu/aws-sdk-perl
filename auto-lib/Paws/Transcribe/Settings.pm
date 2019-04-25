package Paws::Transcribe::Settings;
  use Moose;
  has ChannelIdentification => (is => 'ro', isa => 'Bool');
  has MaxSpeakerLabels => (is => 'ro', isa => 'Int');
  has ShowSpeakerLabels => (is => 'ro', isa => 'Bool');
  has VocabularyName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::Settings object:

  $service_obj->Method(Att1 => { ChannelIdentification => $value, ..., VocabularyName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelIdentification

=head1 DESCRIPTION

Provides optional settings for the C<StartTranscriptionJob> operation.

=head1 ATTRIBUTES


=head2 ChannelIdentification => Bool

  Instructs Amazon Transcribe to process each audio channel separately
and then merge the transcription output of each channel into a single
transcription.

Amazon Transcribe also produces a transcription of each item detected
on an audio channel, including the start time and end time of the item
and alternative transcriptions of the item including the confidence
that Amazon Transcribe has in the transcription.

You can't set both C<ShowSpeakerLabels> and C<ChannelIdentification> in
the same request. If you set both, your request returns a
C<BadRequestException>.


=head2 MaxSpeakerLabels => Int

  The maximum number of speakers to identify in the input audio. If there
are more speakers in the audio than this number, multiple speakers will
be identified as a single speaker. If you specify the
C<MaxSpeakerLabels> field, you must set the C<ShowSpeakerLabels> field
to true.


=head2 ShowSpeakerLabels => Bool

  Determines whether the transcription job uses speaker recognition to
identify different speakers in the input audio. Speaker recognition
labels individual speakers in the audio file. If you set the
C<ShowSpeakerLabels> field to true, you must also set the maximum
number of speaker labels C<MaxSpeakerLabels> field.

You can't set both C<ShowSpeakerLabels> and C<ChannelIdentification> in
the same request. If you set both, your request returns a
C<BadRequestException>.


=head2 VocabularyName => Str

  The name of a vocabulary to use when processing the transcription job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

