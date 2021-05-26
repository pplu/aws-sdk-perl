
package Paws::ResourceTagging::DescribeReportCreationOutput;
  use Moose;
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has S3Location => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::DescribeReportCreationOutput

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

Details of the common errors that all operations return.


=head2 S3Location => Str

The path to the Amazon S3 bucket where the report was stored on
creation.


=head2 Status => Str

Reports the status of the operation.

The operation status can be one of the following:

=over

=item *

C<RUNNING> - Report creation is in progress.

=item *

C<SUCCEEDED> - Report creation is complete. You can open the report
from the Amazon S3 bucket that you specified when you ran
C<StartReportCreation>.

=item *

C<FAILED> - Report creation timed out or the Amazon S3 bucket is not
accessible.

=item *

C<NO REPORT> - No report was generated in the last 90 days.

=back



=head2 _request_id => Str


=cut

1;