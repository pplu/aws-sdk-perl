
package Paws::IoT::ListTopicRulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::IoT::TopicRuleListItem]', traits => ['NameInRequest'], request_name => 'rules');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListTopicRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next set of results, or B<null> if there
are no additional results.


=head2 Rules => ArrayRef[L<Paws::IoT::TopicRuleListItem>]

The rules.


=head2 _request_id => Str


=cut

