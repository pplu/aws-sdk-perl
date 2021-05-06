
package Paws::Lambda::ListTagsResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Lambda::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListTagsResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Lambda::Tags>

The function's tags.


=head2 _request_id => Str


=cut

