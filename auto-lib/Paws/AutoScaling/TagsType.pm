
package Paws::AutoScaling::TagsType;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::TagDescription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::TagsType

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Tags => ArrayRef[L<Paws::AutoScaling::TagDescription>]

One or more tags.


=head2 _request_id => Str


=cut

