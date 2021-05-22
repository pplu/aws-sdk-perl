
package Paws::ACM::GetAccountConfigurationResponse;
  use Moose;
  has ExpiryEvents => (is => 'ro', isa => 'Paws::ACM::ExpiryEventsConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACM::GetAccountConfigurationResponse

=head1 ATTRIBUTES


=head2 ExpiryEvents => L<Paws::ACM::ExpiryEventsConfiguration>

Expiration events configuration options associated with the AWS
account.


=head2 _request_id => Str


=cut

1;