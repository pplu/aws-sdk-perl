
package Paws::EMRContainers::CancelJobRunResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has VirtualClusterId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualClusterId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::CancelJobRunResponse

=head1 ATTRIBUTES


=head2 Id => Str

The output contains the ID of the cancelled job run.


=head2 VirtualClusterId => Str

The output contains the virtual cluster ID for which the job run is
cancelled.


=head2 _request_id => Str


=cut

