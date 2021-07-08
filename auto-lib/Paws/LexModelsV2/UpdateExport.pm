
package Paws::LexModelsV2::UpdateExport;
  use Moose;
  has ExportId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'exportId', required => 1);
  has FilePassword => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filePassword');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateExport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/exports/{exportId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::UpdateExportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UpdateExport - Arguments for method UpdateExport on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateExport on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method UpdateExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateExport.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $UpdateExportResponse = $models - v2 -lex->UpdateExport(
      ExportId     => 'MyId',
      FilePassword => 'MyImportExportFilePassword',    # OPTIONAL
    );

    # Results:
    my $CreationDateTime      = $UpdateExportResponse->CreationDateTime;
    my $ExportId              = $UpdateExportResponse->ExportId;
    my $ExportStatus          = $UpdateExportResponse->ExportStatus;
    my $FileFormat            = $UpdateExportResponse->FileFormat;
    my $LastUpdatedDateTime   = $UpdateExportResponse->LastUpdatedDateTime;
    my $ResourceSpecification = $UpdateExportResponse->ResourceSpecification;

    # Returns a L<Paws::LexModelsV2::UpdateExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/UpdateExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportId => Str

The unique identifier Amazon Lex assigned to the export.



=head2 FilePassword => Str

The new password to use to encrypt the export zip archive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateExport in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

