
package Paws::Personalize::DescribeDatasetImportJobResponse;
  use Moose;
  has DatasetImportJob => (is => 'ro', isa => 'Paws::Personalize::DatasetImportJob', traits => ['NameInRequest'], request_name => 'datasetImportJob' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeDatasetImportJobResponse

=head1 ATTRIBUTES


=head2 DatasetImportJob => L<Paws::Personalize::DatasetImportJob>

Information about the dataset import job, including the status.

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