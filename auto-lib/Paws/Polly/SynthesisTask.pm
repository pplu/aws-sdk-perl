package Paws::Polly::SynthesisTask;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LexiconNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OutputFormat => (is => 'ro', isa => 'Str');
  has OutputUri => (is => 'ro', isa => 'Str');
  has RequestCharacters => (is => 'ro', isa => 'Int');
  has SampleRate => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SpeechMarkTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TaskId => (is => 'ro', isa => 'Str');
  has TaskStatus => (is => 'ro', isa => 'Str');
  has TaskStatusReason => (is => 'ro', isa => 'Str');
  has TextType => (is => 'ro', isa => 'Str');
  has VoiceId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::SynthesisTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Polly::SynthesisTask object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., VoiceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Polly::SynthesisTask object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

SynthesisTask object that provides information about a speech synthesis
task.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  Timestamp for the time the synthesis task was started.


=head2 LanguageCode => Str

  Optional language code for a synthesis task. This is only necessary if
using a bilingual voice, such as Aditi, which can be used for either
Indian English (en-IN) or Hindi (hi-IN).

If a bilingual voice is used and no language code is specified, Amazon
Polly will use the default language of the bilingual voice. The default
language for any voice is the one returned by the DescribeVoices
(https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html)
operation for the C<LanguageCode> parameter. For example, if no
language code is specified, Aditi will use Indian English rather than
Hindi.


=head2 LexiconNames => ArrayRef[Str|Undef]

  List of one or more pronunciation lexicon names you want the service to
apply during synthesis. Lexicons are applied only if the language of
the lexicon is the same as the language of the voice.


=head2 OutputFormat => Str

  The format in which the returned output will be encoded. For audio
stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this
will be json.


=head2 OutputUri => Str

  Pathway for the output speech file.


=head2 RequestCharacters => Int

  Number of billable characters synthesized.


=head2 SampleRate => Str

  The audio frequency specified in Hz.

The valid values for mp3 and ogg_vorbis are "8000", "16000", and
"22050". The default value is "22050".

Valid values for pcm are "8000" and "16000" The default value is
"16000".


=head2 SnsTopicArn => Str

  ARN for the SNS topic optionally used for providing status notification
for a speech synthesis task.


=head2 SpeechMarkTypes => ArrayRef[Str|Undef]

  The type of speech marks returned for the input text.


=head2 TaskId => Str

  The Amazon Polly generated identifier for a speech synthesis task.


=head2 TaskStatus => Str

  Current status of the individual speech synthesis task.


=head2 TaskStatusReason => Str

  Reason for the current status of a specific speech synthesis task,
including errors if the task has failed.


=head2 TextType => Str

  Specifies whether the input text is plain text or SSML. The default
value is plain text.


=head2 VoiceId => Str

  Voice ID to use for the synthesis.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

