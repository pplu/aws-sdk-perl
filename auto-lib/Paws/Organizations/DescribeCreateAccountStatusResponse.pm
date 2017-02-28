
package Paws::Organizations::DescribeCreateAccountStatusResponse;
  use Moose;
  has CreateAccountStatus => (is => 'ro', isa => 'Paws::Organizations::CreateAccountStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::DescribeCreateAccountStatusResponse

=head1 ATTRIBUTES


=head2 CreateAccountStatus => L<Paws::Organizations::CreateAccountStatus>

A structure that contains the current status of an account creation
request.


=head2 _request_id => Str


=cut

1;