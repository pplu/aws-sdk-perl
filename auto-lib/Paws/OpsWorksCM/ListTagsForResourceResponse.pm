
package Paws::OpsWorksCM::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that you can use as the value of C<NextToken> in subsequent
calls to the API to show more results.


=head2 Tags => ArrayRef[L<Paws::OpsWorksCM::Tag>]

Tags that have been applied to the resource.


=head2 _request_id => Str


=cut

1;