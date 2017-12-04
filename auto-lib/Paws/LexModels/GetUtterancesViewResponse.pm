
package Paws::LexModels::GetUtterancesViewResponse;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botName');
  has Utterances => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::UtteranceList]', traits => ['NameInRequest'], request_name => 'utterances');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetUtterancesViewResponse

=head1 ATTRIBUTES


=head2 BotName => Str

The name of the bot for which utterance information was returned.


=head2 Utterances => ArrayRef[L<Paws::LexModels::UtteranceList>]

An array of UtteranceList objects, each containing a list of
UtteranceData objects describing the utterances that were processed by
your bot. The response contains a maximum of 100 C<UtteranceData>
objects for each version.


=head2 _request_id => Str


=cut

