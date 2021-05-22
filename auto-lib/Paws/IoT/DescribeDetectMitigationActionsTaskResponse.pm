
package Paws::IoT::DescribeDetectMitigationActionsTaskResponse;
  use Moose;
  has TaskSummary => (is => 'ro', isa => 'Paws::IoT::DetectMitigationActionsTaskSummary', traits => ['NameInRequest'], request_name => 'taskSummary');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeDetectMitigationActionsTaskResponse

=head1 ATTRIBUTES


=head2 TaskSummary => L<Paws::IoT::DetectMitigationActionsTaskSummary>

The description of a task.


=head2 _request_id => Str


=cut

