
package Paws::LexModelsV2::UpdateBot;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botName', required => 1);
  has DataPrivacy => (is => 'ro', isa => 'Paws::LexModelsV2::DataPrivacy', traits => ['NameInRequest'], request_name => 'dataPrivacy', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IdleSessionTTLInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'idleSessionTTLInSeconds', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::UpdateBotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateBot - Arguments for method UpdateBot on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBot on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method UpdateBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBot.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $UpdateBotResponse = $models - v2 -lex->UpdateBot(
      BotId       => 'MyId',
      BotName     => 'MyName',
      DataPrivacy => {
        ChildDirected => 1,

      },
      IdleSessionTTLInSeconds => 1,
      RoleArn                 => 'MyRoleArn',
      Description             => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $BotId                   = $UpdateBotResponse->BotId;
    my $BotName                 = $UpdateBotResponse->BotName;
    my $BotStatus               = $UpdateBotResponse->BotStatus;
    my $CreationDateTime        = $UpdateBotResponse->CreationDateTime;
    my $DataPrivacy             = $UpdateBotResponse->DataPrivacy;
    my $Description             = $UpdateBotResponse->Description;
    my $IdleSessionTTLInSeconds = $UpdateBotResponse->IdleSessionTTLInSeconds;
    my $LastUpdatedDateTime     = $UpdateBotResponse->LastUpdatedDateTime;
    my $RoleArn                 = $UpdateBotResponse->RoleArn;

    # Returns a L<Paws::LexModelsV2::UpdateBotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/UpdateBot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot to update. This identifier is returned
by the CreateBot operation.



=head2 B<REQUIRED> BotName => Str

The new name of the bot. The name must be unique in the account that
creates the bot.



=head2 B<REQUIRED> DataPrivacy => L<Paws::LexModelsV2::DataPrivacy>

Provides information on additional privacy protections Amazon Lex
should use with the bot's data.



=head2 Description => Str

A description of the bot.



=head2 B<REQUIRED> IdleSessionTTLInSeconds => Int

The time, in seconds, that Amazon Lex should keep information about a
user's conversation with the bot.

A user interaction remains active for the amount of time specified. If
no conversation occurs during this time, the session expires and Amazon
Lex deletes any data provided before the timeout.

You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that has permissions to
access the bot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBot in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

