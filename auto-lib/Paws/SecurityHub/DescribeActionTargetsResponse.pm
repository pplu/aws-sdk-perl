
package Paws::SecurityHub::DescribeActionTargetsResponse;
  use Moose;
  has ActionTargets => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::ActionTarget]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeActionTargetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTargets => ArrayRef[L<Paws::SecurityHub::ActionTarget>]

A list of C<ActionTarget> objects. Each object includes the
C<ActionTargetArn>, C<Description>, and C<Name> of a custom action
target available in Security Hub.


=head2 NextToken => Str

The pagination token to use to request the next page of results.


=head2 _request_id => Str


=cut

