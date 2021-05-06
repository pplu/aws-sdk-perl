
package Paws::SSM::PutInventoryResult;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PutInventoryResult

=head1 ATTRIBUTES


=head2 Message => Str

Information about the request.


=head2 _request_id => Str


=cut

1;