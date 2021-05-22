
package Paws::Personalize::DescribeDatasetExportJobResponse;
  use Moose;
  has DatasetExportJob => (is => 'ro', isa => 'Paws::Personalize::DatasetExportJob', traits => ['NameInRequest'], request_name => 'datasetExportJob' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeDatasetExportJobResponse

=head1 ATTRIBUTES


=head2 DatasetExportJob => L<Paws::Personalize::DatasetExportJob>

Information about the dataset export job, including the status.

The status is one of the following values:

=over

=item *

CREATE PENDING

=item *

CREATE IN_PROGRESS

=item *

ACTIVE

=item *

CREATE FAILED

=back



=head2 _request_id => Str


=cut

1;