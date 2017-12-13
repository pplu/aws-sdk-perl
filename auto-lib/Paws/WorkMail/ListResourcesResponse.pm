
package Paws::WorkMail::ListResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::Resource]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to paginate through all the organization's resources.
While results are still available, it has an associated value. When the
last page is reached, the token is empty.


=head2 Resources => ArrayRef[L<Paws::WorkMail::Resource>]

One page of the organization's resource representation.


=head2 _request_id => Str


=cut

1;