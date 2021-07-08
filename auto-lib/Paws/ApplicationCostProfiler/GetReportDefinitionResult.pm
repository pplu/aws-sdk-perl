
package Paws::ApplicationCostProfiler::GetReportDefinitionResult;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has DestinationS3Location => (is => 'ro', isa => 'Paws::ApplicationCostProfiler::S3Location', traits => ['NameInRequest'], request_name => 'destinationS3Location', required => 1);
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);
  has LastUpdated => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdated', required => 1);
  has ReportDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportDescription', required => 1);
  has ReportFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportFrequency', required => 1);
  has ReportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reportId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationCostProfiler::GetReportDefinitionResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

Timestamp (milliseconds) when this report definition was created.


=head2 B<REQUIRED> DestinationS3Location => L<Paws::ApplicationCostProfiler::S3Location>

Amazon Simple Storage Service (Amazon S3) location where the report is
uploaded.


=head2 B<REQUIRED> Format => Str

Format of the generated report.

Valid values are: C<"CSV">, C<"PARQUET">
=head2 B<REQUIRED> LastUpdated => Str

Timestamp (milliseconds) when this report definition was last updated.


=head2 B<REQUIRED> ReportDescription => Str

Description of the report.


=head2 B<REQUIRED> ReportFrequency => Str

Cadence used to generate the report.

Valid values are: C<"MONTHLY">, C<"DAILY">, C<"ALL">
=head2 B<REQUIRED> ReportId => Str

ID of the report retrieved.


=head2 _request_id => Str


=cut

