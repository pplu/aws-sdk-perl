
package Paws::CloudWatchEvents::ListRuleNamesByTargetResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RuleNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListRuleNamesByTargetResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Indicates that there are additional results to retrieve.


=head2 RuleNames => ArrayRef[Str|Undef]

List of rules names that can invoke the given target.


=head2 _request_id => Str


=cut

1;