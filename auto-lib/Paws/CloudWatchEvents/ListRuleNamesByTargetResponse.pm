
package Paws::CloudWatchEvents::ListRuleNamesByTargetResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RuleNames => (is => 'ro', isa => 'ArrayRef[Str]');


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListRuleNamesByTargetResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Indicates that there are additional results to retrieve.



=head2 RuleNames => ArrayRef[Str]

List of rules names that can invoke the given target.




=cut

1;