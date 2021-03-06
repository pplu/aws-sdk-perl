# Generated by default/object.tt
package Paws::LexRuntimeV2::AudioInputEvent;
  use Moose;
  has AudioChunk => (is => 'ro', isa => 'Str', request_name => 'audioChunk', traits => ['NameInRequest']);
  has ClientTimestampMillis => (is => 'ro', isa => 'Int', request_name => 'clientTimestampMillis', traits => ['NameInRequest']);
  has ContentType => (is => 'ro', isa => 'Str', request_name => 'contentType', traits => ['NameInRequest'], required => 1);
  has EventId => (is => 'ro', isa => 'Str', request_name => 'eventId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::AudioInputEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexRuntimeV2::AudioInputEvent object:

  $service_obj->Method(Att1 => { AudioChunk => $value, ..., EventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexRuntimeV2::AudioInputEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioChunk

=head1 DESCRIPTION

Represents a chunk of audio sent from the client application to Amazon
Lex V2. The audio is all or part of an utterance from the user.

Amazon Lex V2 accumulates audio chunks until it recognizes a natural
pause in speech before processing the input.

=head1 ATTRIBUTES


=head2 AudioChunk => Str

An encoded stream of audio.


=head2 ClientTimestampMillis => Int

A timestamp set by the client of the date and time that the event was
sent to Amazon Lex V2.


=head2 B<REQUIRED> ContentType => Str

The encoding used for the audio chunk. You must use 8 KHz PCM 16-bit
mono-channel little-endian format. The value of the field should be:

C<audio/lpcm; sample-rate=8000; sample-size-bits=16; channel-count=1;
is-big-endian=false>


=head2 EventId => Str

A unique identifier that your application assigns to the event. You can
use this to identify events in logs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexRuntimeV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

