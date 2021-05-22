
package Paws::LexModelsV2::CreateExport;
  use Moose;
  has FileFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileFormat', required => 1);
  has FilePassword => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filePassword');
  has ResourceSpecification => (is => 'ro', isa => 'Paws::LexModelsV2::ExportResourceSpecification', traits => ['NameInRequest'], request_name => 'resourceSpecification', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/exports/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::CreateExportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::CreateExport - Arguments for method CreateExport on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExport on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method CreateExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExport.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $CreateExportResponse = $models - v2 -lex->CreateExport(
      FileFormat            => 'LexJson',
      ResourceSpecification => {
        BotExportSpecification => {
          BotId      => 'MyId',            # min: 10, max: 10
          BotVersion => 'MyBotVersion',    # min: 1, max: 5

        },    # OPTIONAL
        BotLocaleExportSpecification => {
          BotId      => 'MyId',            # min: 10, max: 10
          BotVersion => 'MyBotVersion',    # min: 1, max: 5
          LocaleId   => 'MyLocaleId',

        },    # OPTIONAL
      },
      FilePassword => 'MyImportExportFilePassword',    # OPTIONAL
    );

    # Results:
    my $CreationDateTime      = $CreateExportResponse->CreationDateTime;
    my $ExportId              = $CreateExportResponse->ExportId;
    my $ExportStatus          = $CreateExportResponse->ExportStatus;
    my $FileFormat            = $CreateExportResponse->FileFormat;
    my $ResourceSpecification = $CreateExportResponse->ResourceSpecification;

    # Returns a L<Paws::LexModelsV2::CreateExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/CreateExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileFormat => Str

The file format of the bot or bot locale definition files.

Valid values are: C<"LexJson">

=head2 FilePassword => Str

An password to use to encrypt the exported archive. Using a password is
optional, but you should encrypt the archive to protect the data in
transit between Amazon Lex and your local computer.



=head2 B<REQUIRED> ResourceSpecification => L<Paws::LexModelsV2::ExportResourceSpecification>

Specifies the type of resource to export, either a bot or a bot locale.
You can only specify one type of resource to export.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExport in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

