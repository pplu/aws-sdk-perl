
package Paws::SSMContacts::ListTagsForResourceResult;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListTagsForResourceResult

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::SSMContacts::Tag>]

The tags related to the contact or escalation plan.


=head2 _request_id => Str


=cut

1;