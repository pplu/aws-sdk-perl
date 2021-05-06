
package Paws::LexModels::GetBotChannelAssociationsResponse;
  use Moose;
  has BotChannelAssociations => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::BotChannelAssociation]', traits => ['NameInRequest'], request_name => 'botChannelAssociations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotChannelAssociationsResponse

=head1 ATTRIBUTES


=head2 BotChannelAssociations => ArrayRef[L<Paws::LexModels::BotChannelAssociation>]

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

