
package Paws::LexRuntimeV2::StartConversationResponse;
  use Moose;
  has ResponseEventStream => (is => 'ro', isa => 'Paws::LexRuntimeV2::StartConversationResponseEventStream', traits => ['NameInRequest'], request_name => 'responseEventStream');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ResponseEventStream');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::StartConversationResponse

=head1 ATTRIBUTES


=head2 ResponseEventStream => L<Paws::LexRuntimeV2::StartConversationResponseEventStream>

Represents the stream of events from Amazon Lex V2 to your application.
The events are encoded as HTTP/2 data frames.


=head2 _request_id => Str


=cut

