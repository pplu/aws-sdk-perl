
package Paws::SSM::DescribeAutomationExecutionsResult;
  use Moose;
  has AutomationExecutionMetadataList => (is => 'ro', isa => 'ArrayRef[Paws::SSM::AutomationExecutionMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAutomationExecutionsResult

=head1 ATTRIBUTES


=head2 AutomationExecutionMetadataList => ArrayRef[L<Paws::SSM::AutomationExecutionMetadata>]

The list of details about each automation execution which has occurred
which matches the filter specification, if any.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;