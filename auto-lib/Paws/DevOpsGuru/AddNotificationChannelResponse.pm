
package Paws::DevOpsGuru::AddNotificationChannelResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::AddNotificationChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the added notification channel.


=head2 _request_id => Str


=cut

