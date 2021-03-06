# Generated by default/object.tt
package Paws::LexRuntimeV2::PlaybackCompletionEvent;
  use Moose;
  has ClientTimestampMillis => (is => 'ro', isa => 'Int', request_name => 'clientTimestampMillis', traits => ['NameInRequest']);
  has EventId => (is => 'ro', isa => 'Str', request_name => 'eventId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::PlaybackCompletionEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexRuntimeV2::PlaybackCompletionEvent object:

  $service_obj->Method(Att1 => { ClientTimestampMillis => $value, ..., EventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexRuntimeV2::PlaybackCompletionEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientTimestampMillis

=head1 DESCRIPTION

Event sent from the client application to Amazon Lex V2 to indicate
that playback of audio is complete and that Amazon Lex V2 should start
processing the user's input.

=head1 ATTRIBUTES


=head2 ClientTimestampMillis => Int

A timestamp set by the client of the date and time that the event was
sent to Amazon Lex V2.


=head2 EventId => Str

A unique identifier that your application assigns to the event. You can
use this to identify events in logs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexRuntimeV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

