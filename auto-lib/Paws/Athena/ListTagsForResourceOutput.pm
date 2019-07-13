
package Paws::Athena::ListTagsForResourceOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Athena::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to be used by the next request if this request is truncated.


=head2 Tags => ArrayRef[L<Paws::Athena::Tag>]

The list of tags associated with this workgroup.


=head2 _request_id => Str


=cut

1;