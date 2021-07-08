
package Paws::LexModelsV2::StartImport;
  use Moose;
  has FilePassword => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filePassword');
  has ImportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importId', required => 1);
  has MergeStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mergeStrategy', required => 1);
  has ResourceSpecification => (is => 'ro', isa => 'Paws::LexModelsV2::ImportResourceSpecification', traits => ['NameInRequest'], request_name => 'resourceSpecification', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartImport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/imports/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::StartImportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::StartImport - Arguments for method StartImport on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartImport on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method StartImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartImport.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $StartImportResponse = $models - v2 -lex->StartImport(
      ImportId              => 'MyId',
      MergeStrategy         => 'Overwrite',
      ResourceSpecification => {
        BotImportSpecification => {
          BotName     => 'MyName',    # min: 1, max: 100
          DataPrivacy => {
            ChildDirected => 1,

          },
          RoleArn => 'MyRoleArn',     # min: 32, max: 2048
          BotTags => {
            'MyTagKey' => 'MyTagValue', # key: min: 1, max: 128, value: max: 256
          },    # max: 200; OPTIONAL
          IdleSessionTTLInSeconds => 1,    # min: 60, max: 86400; OPTIONAL
          TestBotAliasTags        => {
            'MyTagKey' => 'MyTagValue', # key: min: 1, max: 128, value: max: 256
          },    # max: 200; OPTIONAL
        },    # OPTIONAL
        BotLocaleImportSpecification => {
          BotId      => 'MyId',                 # min: 10, max: 10
          BotVersion => 'MyDraftBotVersion',    # min: 5, max: 5
          LocaleId   => 'MyLocaleId',
          NluIntentConfidenceThreshold => 1,    # max: 1; OPTIONAL
          VoiceSettings                => {
            VoiceId => 'MyVoiceId',

          },                                    # OPTIONAL
        },    # OPTIONAL
      },
      FilePassword => 'MyImportExportFilePassword',    # OPTIONAL
    );

    # Results:
    my $CreationDateTime      = $StartImportResponse->CreationDateTime;
    my $ImportId              = $StartImportResponse->ImportId;
    my $ImportStatus          = $StartImportResponse->ImportStatus;
    my $MergeStrategy         = $StartImportResponse->MergeStrategy;
    my $ResourceSpecification = $StartImportResponse->ResourceSpecification;

    # Returns a L<Paws::LexModelsV2::StartImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/StartImport>

=head1 ATTRIBUTES


=head2 FilePassword => Str

The password used to encrypt the zip archive that contains the bot or
bot locale definition. You should always encrypt the zip archive to
protect it during transit between your site and Amazon Lex.



=head2 B<REQUIRED> ImportId => Str

The unique identifier for the import. It is included in the response
from the operation.



=head2 B<REQUIRED> MergeStrategy => Str

The strategy to use when there is a name conflict between the imported
resource and an existing resource. When the merge strategy is
C<FailOnConflict> existing resources are not overwritten and the import
fails.

Valid values are: C<"Overwrite">, C<"FailOnConflict">

=head2 B<REQUIRED> ResourceSpecification => L<Paws::LexModelsV2::ImportResourceSpecification>

Parameters for creating the bot or bot locale.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartImport in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

