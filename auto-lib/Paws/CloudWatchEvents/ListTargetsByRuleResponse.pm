
package Paws::CloudWatchEvents::ListTargetsByRuleResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Target]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListTargetsByRuleResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Indicates that there are additional results to retrieve.


=head2 Targets => ArrayRef[L<Paws::CloudWatchEvents::Target>]

Lists the targets assigned to the rule.


=head2 _request_id => Str


=cut

1;