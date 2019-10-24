
package Paws::LexModels::GetBotsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexModels::Types qw/LexModels_BotMetadata/;
  has Bots => (is => 'ro', isa => ArrayRef[LexModels_BotMetadata]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Bots' => {
                           'class' => 'Paws::LexModels::BotMetadata',
                           'type' => 'ArrayRef[LexModels_BotMetadata]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Bots' => 'bots'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotsResponse

=head1 ATTRIBUTES


=head2 Bots => ArrayRef[LexModels_BotMetadata]

An array of C<botMetadata> objects, with one entry for each bot.


=head2 NextToken => Str

If the response is truncated, it includes a pagination token that you
can specify in your next request to fetch the next page of bots.


=head2 _request_id => Str


=cut

