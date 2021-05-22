
package Paws::LexModelsV2::CreateBotVersion;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersionLocaleSpecification => (is => 'ro', isa => 'Paws::LexModelsV2::BotVersionLocaleSpecification', traits => ['NameInRequest'], request_name => 'botVersionLocaleSpecification', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBotVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateBotVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateBotVersion - Arguments for method CreateBotVersion on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBotVersion on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateBotVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBotVersion.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateBotVersionResponse = $models - v2 -lex->CreateBotVersion(
      BotId                         => 'MyId',
      BotVersionLocaleSpecification => {
        'MyLocaleId' => {
          SourceBotVersion => 'MyBotVersion',    # min: 1, max: 5

        },
      },
      Description => 'MyDescription',            # OPTIONAL
    );

    # Results:
    my $BotId      = $CreateBotVersionResponse->BotId;
    my $BotStatus  = $CreateBotVersionResponse->BotStatus;
    my $BotVersion = $CreateBotVersionResponse->BotVersion;
    my $BotVersionLocaleSpecification =
      $CreateBotVersionResponse->BotVersionLocaleSpecification;
    my $CreationDateTime = $CreateBotVersionResponse->CreationDateTime;
    my $Description      = $CreateBotVersionResponse->Description;

    # Returns a L<Paws::LexModelsV2::CreateBotVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateBotVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot to create the version for.



=head2 B<REQUIRED> BotVersionLocaleSpecification => L<Paws::LexModelsV2::BotVersionLocaleSpecification>

Specifies the locales that Amazon Lex adds to this version. You can
choose the C<Draft> version or any other previously published version
for each locale. When you specify a source version, the locale data is
copied from the source version to the new version.



=head2 Description => Str

A description of the version. Use the description to help identify the
version in lists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBotVersion in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

