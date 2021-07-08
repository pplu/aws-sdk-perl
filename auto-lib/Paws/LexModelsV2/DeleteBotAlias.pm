
package Paws::LexModelsV2::DeleteBotAlias;
  use Moose;
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAliasId', required => 1);
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has SkipResourceInUseCheck => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'skipResourceInUseCheck');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBotAlias');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botaliases/{botAliasId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DeleteBotAliasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteBotAlias - Arguments for method DeleteBotAlias on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBotAlias on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DeleteBotAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBotAlias.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DeleteBotAliasResponse = $models - v2 -lex->DeleteBotAlias(
      BotAliasId             => 'MyBotAliasId',
      BotId                  => 'MyId',
      SkipResourceInUseCheck => 1,                # OPTIONAL
    );

    # Results:
    my $BotAliasId     = $DeleteBotAliasResponse->BotAliasId;
    my $BotAliasStatus = $DeleteBotAliasResponse->BotAliasStatus;
    my $BotId          = $DeleteBotAliasResponse->BotId;

    # Returns a L<Paws::LexModelsV2::DeleteBotAliasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DeleteBotAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAliasId => Str

The unique identifier of the bot alias to delete.



=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot associated with the alias to delete.



=head2 SkipResourceInUseCheck => Bool

When this parameter is true, Amazon Lex doesn't check to see if any
other resource is using the alias before it is deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBotAlias in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

