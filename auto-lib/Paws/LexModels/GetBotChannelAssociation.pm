
package Paws::LexModels::GetBotChannelAssociation;
  use Moose;
  has BotAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'aliasName', required => 1);
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBotChannelAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botName}/aliases/{aliasName}/channels/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetBotChannelAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotChannelAssociation - Arguments for method GetBotChannelAssociation on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBotChannelAssociation on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetBotChannelAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBotChannelAssociation.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetBotChannelAssociationResponse =
      $models . lex->GetBotChannelAssociation(
      BotAlias => 'MyAliasName',
      BotName  => 'MyBotName',
      Name     => 'MyBotChannelName',

      );

    # Results:
    my $BotAlias         = $GetBotChannelAssociationResponse->BotAlias;
    my $BotConfiguration = $GetBotChannelAssociationResponse->BotConfiguration;
    my $BotName          = $GetBotChannelAssociationResponse->BotName;
    my $CreatedDate      = $GetBotChannelAssociationResponse->CreatedDate;
    my $Description      = $GetBotChannelAssociationResponse->Description;
    my $FailureReason    = $GetBotChannelAssociationResponse->FailureReason;
    my $Name             = $GetBotChannelAssociationResponse->Name;
    my $Status           = $GetBotChannelAssociationResponse->Status;
    my $Type             = $GetBotChannelAssociationResponse->Type;

    # Returns a L<Paws::LexModels::GetBotChannelAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetBotChannelAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAlias => Str

An alias pointing to the specific version of the Amazon Lex bot to
which this association is being made.



=head2 B<REQUIRED> BotName => Str

The name of the Amazon Lex bot.



=head2 B<REQUIRED> Name => Str

The name of the association between the bot and the channel. The name
is case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBotChannelAssociation in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

