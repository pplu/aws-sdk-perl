# Generated by default/object.tt
package Paws::LexRuntimeV2::AudioResponseEvent;
  use Moose;
  has AudioChunk => (is => 'ro', isa => 'Str', request_name => 'audioChunk', traits => ['NameInRequest']);
  has ContentType => (is => 'ro', isa => 'Str', request_name => 'contentType', traits => ['NameInRequest']);
  has EventId => (is => 'ro', isa => 'Str', request_name => 'eventId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::AudioResponseEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexRuntimeV2::AudioResponseEvent object:

  $service_obj->Method(Att1 => { AudioChunk => $value, ..., EventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexRuntimeV2::AudioResponseEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioChunk

=head1 DESCRIPTION

An event sent from Amazon Lex V2 to your client application containing
audio to play to the user.

=head1 ATTRIBUTES


=head2 AudioChunk => Str

A chunk of the audio to play.


=head2 ContentType => Str

The encoding of the audio chunk. This is the same as the encoding
configure in the C<contentType> field of the C<ConfigurationEvent>.


=head2 EventId => Str

A unique identifier of the event sent by Amazon Lex V2. The identifier
is in the form C<RESPONSE-N>, where N is a number starting with one and
incremented for each event sent by Amazon Lex V2 in the current
session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexRuntimeV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

