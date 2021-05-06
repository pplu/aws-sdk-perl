
package Paws::SNS::ConfirmSubscriptionResponse;
  use Moose;
  has SubscriptionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ConfirmSubscriptionResponse

=head1 ATTRIBUTES


=head2 SubscriptionArn => Str

The ARN of the created subscription.


=head2 _request_id => Str


=cut

