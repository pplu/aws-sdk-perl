
package Paws::LexModelsV2::DescribeExport;
  use Moose;
  has ExportId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'exportId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/exports/{exportId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeExportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeExport - Arguments for method DescribeExport on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExport on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExport.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeExportResponse = $models - v2 -lex->DescribeExport(
      ExportId => 'MyId',

    );

    # Results:
    my $CreationDateTime      = $DescribeExportResponse->CreationDateTime;
    my $DownloadUrl           = $DescribeExportResponse->DownloadUrl;
    my $ExportId              = $DescribeExportResponse->ExportId;
    my $ExportStatus          = $DescribeExportResponse->ExportStatus;
    my $FailureReasons        = $DescribeExportResponse->FailureReasons;
    my $FileFormat            = $DescribeExportResponse->FileFormat;
    my $LastUpdatedDateTime   = $DescribeExportResponse->LastUpdatedDateTime;
    my $ResourceSpecification = $DescribeExportResponse->ResourceSpecification;

    # Returns a L<Paws::LexModelsV2::DescribeExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportId => Str

The unique identifier of the export to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExport in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

