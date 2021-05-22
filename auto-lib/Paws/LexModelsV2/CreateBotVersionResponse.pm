
package Paws::LexModelsV2::CreateBotVersionResponse;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botStatus');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has BotVersionLocaleSpecification => (is => 'ro', isa => 'Paws::LexModelsV2::BotVersionLocaleSpecification', traits => ['NameInRequest'], request_name => 'botVersionLocaleSpecification');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateBotVersionResponse

=head1 ATTRIBUTES


=head2 BotId => Str

The bot identifier specified in the request.


=head2 BotStatus => Str

When you send a request to create or update a bot, Amazon Lex sets the
status response element to C<Creating>. After Amazon Lex builds the
bot, it sets status to C<Available>. If Amazon Lex can't build the bot,
it sets status to C<Failed>.

Valid values are: C<"Creating">, C<"Available">, C<"Inactive">, C<"Deleting">, C<"Failed">, C<"Versioning">, C<"Importing">
=head2 BotVersion => Str

The version number assigned to the version.


=head2 BotVersionLocaleSpecification => L<Paws::LexModelsV2::BotVersionLocaleSpecification>

The source versions used for each locale in the new version.


=head2 CreationDateTime => Str

A timestamp of the date and time that the version was created.


=head2 Description => Str

The description of the version specified in the request.


=head2 _request_id => Str


=cut

