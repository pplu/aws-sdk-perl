
package Paws::Chime::GetAccountResponse;
  use Moose;
  has Account => (is => 'ro', isa => 'Paws::Chime::Account');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetAccountResponse

=head1 ATTRIBUTES


=head2 Account => L<Paws::Chime::Account>

The Amazon Chime account details.


=head2 _request_id => Str


=cut

