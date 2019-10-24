
package Paws::LexModels::GetBotChannelAssociationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LexModels::Types qw/LexModels_BotChannelAssociation/;
  has BotChannelAssociations => (is => 'ro', isa => ArrayRef[LexModels_BotChannelAssociation]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BotChannelAssociations' => {
                                             'class' => 'Paws::LexModels::BotChannelAssociation',
                                             'type' => 'ArrayRef[LexModels_BotChannelAssociation]'
                                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'BotChannelAssociations' => 'botChannelAssociations',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotChannelAssociationsResponse

=head1 ATTRIBUTES


=head2 BotChannelAssociations => ArrayRef[LexModels_BotChannelAssociation]

An array of objects, one for each association, that provides
information about the Amazon Lex bot and its association with the
channel.


=head2 NextToken => Str

A pagination token that fetches the next page of associations. If the
response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of associations, specify
the pagination token in the next request.


=head2 _request_id => Str


=cut

