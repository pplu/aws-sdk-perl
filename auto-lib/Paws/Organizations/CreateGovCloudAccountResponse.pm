
package Paws::Organizations::CreateGovCloudAccountResponse;
  use Moose;
  has CreateAccountStatus => (is => 'ro', isa => 'Paws::Organizations::CreateAccountStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CreateGovCloudAccountResponse

=head1 ATTRIBUTES


=head2 CreateAccountStatus => L<Paws::Organizations::CreateAccountStatus>




=head2 _request_id => Str


=cut

1;