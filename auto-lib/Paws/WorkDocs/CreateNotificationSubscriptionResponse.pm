
package Paws::WorkDocs::CreateNotificationSubscriptionResponse;
  use Moose;
  has Subscription => (is => 'ro', isa => 'Paws::WorkDocs::Subscription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::CreateNotificationSubscriptionResponse

=head1 ATTRIBUTES


=head2 Subscription => L<Paws::WorkDocs::Subscription>

The subscription.


=head2 _request_id => Str


=cut

