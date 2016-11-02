
package Paws::Snowball::GetSnowballUsageResult;
  use Moose;
  has SnowballLimit => (is => 'ro', isa => 'Int');
  has SnowballsInUse => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::GetSnowballUsageResult

=head1 ATTRIBUTES


=head2 SnowballLimit => Int

The service limit for number of Snowballs this account can have at
once. The default service limit is 1 (one).


=head2 SnowballsInUse => Int

The number of Snowballs that this account is currently using.


=head2 _request_id => Str


=cut

1;