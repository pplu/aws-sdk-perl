
package Paws::Organizations::DescribeAccountResponse;
  use Moose;
  has Account => (is => 'ro', isa => 'Paws::Organizations::Account');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeAccountResponse

=head1 ATTRIBUTES


=head2 Account => L<Paws::Organizations::Account>

A structure that contains information about the requested account.


=head2 _request_id => Str


=cut

1;