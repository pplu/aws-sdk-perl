
package Paws::LexModelsV2::CreateBot;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botName', required => 1);
  has BotTags => (is => 'ro', isa => 'Paws::LexModelsV2::TagMap', traits => ['NameInRequest'], request_name => 'botTags');
  has DataPrivacy => (is => 'ro', isa => 'Paws::LexModelsV2::DataPrivacy', traits => ['NameInRequest'], request_name => 'dataPrivacy', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleSessionTTLInSeconds', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has TestBotAliasTags => (is => 'ro', isa => 'Paws::LexModelsV2::TagMap', traits => ['NameInRequest'], request_name => 'testBotAliasTags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateBotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateBot - Arguments for method CreateBot on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBot on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBot.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateBotResponse = $models - v2 -lex->CreateBot(
      BotName     => 'MyName',
      DataPrivacy => {
        ChildDirected => 1,

      },
      IdleSessionTTLInSeconds => 1,
      RoleArn                 => 'MyRoleArn',
      BotTags                 => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Description      => 'MyDescription',    # OPTIONAL
      TestBotAliasTags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $BotId                   = $CreateBotResponse->BotId;
    my $BotName                 = $CreateBotResponse->BotName;
    my $BotStatus               = $CreateBotResponse->BotStatus;
    my $BotTags                 = $CreateBotResponse->BotTags;
    my $CreationDateTime        = $CreateBotResponse->CreationDateTime;
    my $DataPrivacy             = $CreateBotResponse->DataPrivacy;
    my $Description             = $CreateBotResponse->Description;
    my $IdleSessionTTLInSeconds = $CreateBotResponse->IdleSessionTTLInSeconds;
    my $RoleArn                 = $CreateBotResponse->RoleArn;
    my $TestBotAliasTags        = $CreateBotResponse->TestBotAliasTags;

    # Returns a L<Paws::LexModelsV2::CreateBotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateBot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotName => Str

The name of the bot. The bot name must be unique in the account that
creates the bot.



=head2 BotTags => L<Paws::LexModelsV2::TagMap>

A list of tags to add to the bot. You can only add tags when you create
a bot. You can't use the C<UpdateBot> operation to update tags. To
update tags, use the C<TagResource> operation.



=head2 B<REQUIRED> DataPrivacy => L<Paws::LexModelsV2::DataPrivacy>

Provides information on additional privacy protections Amazon Lex
should use with the bot's data.



=head2 Description => Str

A description of the bot. It appears in lists to help you identify a
particular bot.



=head2 B<REQUIRED> IdleSessionTTLInSeconds => Int

The time, in seconds, that Amazon Lex should keep information about a
user's conversation with the bot.

A user interaction remains active for the amount of time specified. If
no conversation occurs during this time, the session expires and Amazon
Lex deletes any data provided before the timeout.

You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that has permission to
access the bot.



=head2 TestBotAliasTags => L<Paws::LexModelsV2::TagMap>

A list of tags to add to the test alias for a bot. You can only add
tags when you create a bot. You can't use the C<UpdateAlias> operation
to update tags. To update tags on the test alias, use the
C<TagResource> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBot in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

