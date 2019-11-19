
package Paws::LexModels::GetBotVersionsResponse;
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
                       'Bots' => 'bots',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotVersionsResponse

=head1 ATTRIBUTES


=head2 Bots => ArrayRef[LexModels_BotMetadata]

An array of C<BotMetadata> objects, one for each numbered version of
the bot plus one for the C<$LATEST> version.


=head2 NextToken => Str

A pagination token for fetching the next page of bot versions. If the
response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of versions, specify the
pagination token in the next request.


=head2 _request_id => Str


=cut

