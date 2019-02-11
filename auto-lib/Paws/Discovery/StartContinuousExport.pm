
package Paws::Discovery::StartContinuousExport;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartContinuousExport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::StartContinuousExportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartContinuousExport - Arguments for method StartContinuousExport on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartContinuousExport on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method StartContinuousExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartContinuousExport.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $StartContinuousExportResponse = $discovery->StartContinuousExport();

    # Results:
    my $DataSource = $StartContinuousExportResponse->DataSource;
    my $ExportId   = $StartContinuousExportResponse->ExportId;
    my $S3Bucket   = $StartContinuousExportResponse->S3Bucket;
    my $SchemaStorageConfig =
      $StartContinuousExportResponse->SchemaStorageConfig;
    my $StartTime = $StartContinuousExportResponse->StartTime;

    # Returns a L<Paws::Discovery::StartContinuousExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/StartContinuousExport>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartContinuousExport in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

