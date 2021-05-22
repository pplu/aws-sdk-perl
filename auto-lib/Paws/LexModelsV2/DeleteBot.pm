
package Paws::LexModelsV2::DeleteBot;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has SkipResourceInUseCheck => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'skipResourceInUseCheck');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DeleteBotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteBot - Arguments for method DeleteBot on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBot on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DeleteBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBot.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DeleteBotResponse = $models - v2 -lex->DeleteBot(
      BotId                  => 'MyId',
      SkipResourceInUseCheck => 1,        # OPTIONAL
    );

    # Results:
    my $BotId     = $DeleteBotResponse->BotId;
    my $BotStatus = $DeleteBotResponse->BotStatus;

    # Returns a L<Paws::LexModelsV2::DeleteBotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DeleteBot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot to delete.



=head2 SkipResourceInUseCheck => Bool

When C<true>, Amazon Lex doesn't check to see if another resource, such
as an alias, is using the bot before it is deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBot in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

