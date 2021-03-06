# Generated by default/object.tt
package Paws::Transcribe::MedicalTranscriptionSetting;
  use Moose;
  has ChannelIdentification => (is => 'ro', isa => 'Bool');
  has MaxAlternatives => (is => 'ro', isa => 'Int');
  has MaxSpeakerLabels => (is => 'ro', isa => 'Int');
  has ShowAlternatives => (is => 'ro', isa => 'Bool');
  has ShowSpeakerLabels => (is => 'ro', isa => 'Bool');
  has VocabularyName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::MedicalTranscriptionSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::MedicalTranscriptionSetting object:

  $service_obj->Method(Att1 => { ChannelIdentification => $value, ..., VocabularyName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::MedicalTranscriptionSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelIdentification

=head1 DESCRIPTION

Optional settings for the StartMedicalTranscriptionJob operation.

=head1 ATTRIBUTES


=head2 ChannelIdentification => Bool

Instructs Amazon Transcribe Medical to process each audio channel
separately and then merge the transcription output of each channel into
a single transcription.

Amazon Transcribe Medical also produces a transcription of each item
detected on an audio channel, including the start time and end time of
the item and alternative transcriptions of item. The alternative
transcriptions also come with confidence scores provided by Amazon
Transcribe Medical.

You can't set both C<ShowSpeakerLabels> and C<ChannelIdentification> in
the same request. If you set both, your request returns a
C<BadRequestException>


=head2 MaxAlternatives => Int

The maximum number of alternatives that you tell the service to return.
If you specify the C<MaxAlternatives> field, you must set the
C<ShowAlternatives> field to true.


=head2 MaxSpeakerLabels => Int

The maximum number of speakers to identify in the input audio. If there
are more speakers in the audio than this number, multiple speakers are
identified as a single speaker. If you specify the C<MaxSpeakerLabels>
field, you must set the C<ShowSpeakerLabels> field to true.


=head2 ShowAlternatives => Bool

Determines whether alternative transcripts are generated along with the
transcript that has the highest confidence. If you set
C<ShowAlternatives> field to true, you must also set the maximum number
of alternatives to return in the C<MaxAlternatives> field.


=head2 ShowSpeakerLabels => Bool

Determines whether the transcription job uses speaker recognition to
identify different speakers in the input audio. Speaker recognition
labels individual speakers in the audio file. If you set the
C<ShowSpeakerLabels> field to true, you must also set the maximum
number of speaker labels in the C<MaxSpeakerLabels> field.

You can't set both C<ShowSpeakerLabels> and C<ChannelIdentification> in
the same request. If you set both, your request returns a
C<BadRequestException>.


=head2 VocabularyName => Str

The name of the vocabulary to use when processing a medical
transcription job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

