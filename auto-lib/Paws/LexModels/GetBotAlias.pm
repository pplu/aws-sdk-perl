
package Paws::LexModels::GetBotAlias;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBotAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botName}/aliases/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetBotAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotAlias - Arguments for method GetBotAlias on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBotAlias on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetBotAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBotAlias.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetBotAliasResponse = $models . lex->GetBotAlias(
      BotName => 'MyBotName',
      Name    => 'MyAliasName',

    );

    # Results:
    my $BotName         = $GetBotAliasResponse->BotName;
    my $BotVersion      = $GetBotAliasResponse->BotVersion;
    my $Checksum        = $GetBotAliasResponse->Checksum;
    my $CreatedDate     = $GetBotAliasResponse->CreatedDate;
    my $Description     = $GetBotAliasResponse->Description;
    my $LastUpdatedDate = $GetBotAliasResponse->LastUpdatedDate;
    my $Name            = $GetBotAliasResponse->Name;

    # Returns a L<Paws::LexModels::GetBotAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetBotAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotName => Str

The name of the bot.



=head2 B<REQUIRED> Name => Str

The name of the bot alias. The name is case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBotAlias in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

