
package Paws::IoT::StartOnDemandAuditTaskResponse;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StartOnDemandAuditTaskResponse

=head1 ATTRIBUTES


=head2 TaskId => Str

The ID of the on-demand audit you started.


=head2 _request_id => Str


=cut

