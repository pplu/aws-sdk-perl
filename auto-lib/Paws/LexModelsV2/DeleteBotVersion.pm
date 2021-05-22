
package Paws::LexModelsV2::DeleteBotVersion;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has SkipResourceInUseCheck => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'skipResourceInUseCheck');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBotVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DeleteBotVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteBotVersion - Arguments for method DeleteBotVersion on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBotVersion on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DeleteBotVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBotVersion.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DeleteBotVersionResponse = $models - v2 -lex->DeleteBotVersion(
      BotId                  => 'MyId',
      BotVersion             => 'MyNumericalBotVersion',
      SkipResourceInUseCheck => 1,                         # OPTIONAL
    );

    # Results:
    my $BotId      = $DeleteBotVersionResponse->BotId;
    my $BotStatus  = $DeleteBotVersionResponse->BotStatus;
    my $BotVersion = $DeleteBotVersionResponse->BotVersion;

    # Returns a L<Paws::LexModelsV2::DeleteBotVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DeleteBotVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot that contains the version.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot to delete.



=head2 SkipResourceInUseCheck => Bool

By default, the C<DeleteBotVersion> operations throws a
C<ResourceInUseException> exception if you try to delete a bot version
that has an alias pointing at it. Set the C<skipResourceInUseCheck>
parameter to C<true> to skip this check and remove the version even if
an alias points to it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBotVersion in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

