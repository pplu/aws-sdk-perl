
package Paws::Kendra::StartDataSourceSyncJobResponse;
  use Moose;
  has ExecutionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::StartDataSourceSyncJobResponse

=head1 ATTRIBUTES


=head2 ExecutionId => Str

Identifies a particular synchronization job.


=head2 _request_id => Str


=cut

1;