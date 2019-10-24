
package Paws::LexModels::GetUtterancesViewResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexModels::Types qw/LexModels_UtteranceList/;
  has BotName => (is => 'ro', isa => Str);
  has Utterances => (is => 'ro', isa => ArrayRef[LexModels_UtteranceList]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Utterances' => {
                                 'class' => 'Paws::LexModels::UtteranceList',
                                 'type' => 'ArrayRef[LexModels_UtteranceList]'
                               },
               'BotName' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Utterances' => 'utterances',
                       'BotName' => 'botName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetUtterancesViewResponse

=head1 ATTRIBUTES


=head2 BotName => Str

The name of the bot for which utterance information was returned.


=head2 Utterances => ArrayRef[LexModels_UtteranceList]

An array of UtteranceList objects, each containing a list of
UtteranceData objects describing the utterances that were processed by
your bot. The response contains a maximum of 100 C<UtteranceData>
objects for each version.


=head2 _request_id => Str


=cut

