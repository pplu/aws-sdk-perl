
package Paws::Lambda::GetAccountSettingsResponse;
  use Moose;
  has AccountLimit => (is => 'ro', isa => 'Paws::Lambda::AccountLimit');
  has AccountUsage => (is => 'ro', isa => 'Paws::Lambda::AccountUsage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetAccountSettingsResponse

=head1 ATTRIBUTES


=head2 AccountLimit => L<Paws::Lambda::AccountLimit>

Limits related to concurrency and code storage.


=head2 AccountUsage => L<Paws::Lambda::AccountUsage>

The number of functions and amount of storage in use.


=head2 _request_id => Str


=cut

