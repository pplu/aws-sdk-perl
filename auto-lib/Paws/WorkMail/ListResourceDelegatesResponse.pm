
package Paws::WorkMail::ListResourceDelegatesResponse;
  use Moose;
  has Delegates => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::Delegate]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListResourceDelegatesResponse

=head1 ATTRIBUTES


=head2 Delegates => ArrayRef[L<Paws::WorkMail::Delegate>]

One page of the resource's delegates.


=head2 NextToken => Str

The token used to paginate through the delegates associated with a
resource. While results are still available, it has an associated
value. When the last page is reached, the token is empty.


=head2 _request_id => Str


=cut

1;