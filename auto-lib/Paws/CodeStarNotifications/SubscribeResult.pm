
package Paws::CodeStarNotifications::SubscribeResult;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::SubscribeResult

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the notification rule for which you
have created assocations.


=head2 _request_id => Str


=cut

