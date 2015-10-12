
package Paws::IoT::ListTopicRulesResponse;
  use Moose;
  has nextToken => (is => 'ro', isa => 'Str');
  has rules => (is => 'ro', isa => 'ArrayRef[Paws::IoT::TopicRuleListItem]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListTopicRulesResponse

=head1 ATTRIBUTES

=head2 nextToken => Str

  A token used to retrieve the next value.
=head2 rules => ArrayRef[Paws::IoT::TopicRuleListItem]

  The rules.


=cut

