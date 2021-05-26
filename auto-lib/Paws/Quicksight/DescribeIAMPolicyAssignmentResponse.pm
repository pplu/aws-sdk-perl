
package Paws::Quicksight::DescribeIAMPolicyAssignmentResponse;
  use Moose;
  has IAMPolicyAssignment => (is => 'ro', isa => 'Paws::Quicksight::IAMPolicyAssignment');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeIAMPolicyAssignmentResponse

=head1 ATTRIBUTES


=head2 IAMPolicyAssignment => L<Paws::Quicksight::IAMPolicyAssignment>

Information describing the IAM policy assignment.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

