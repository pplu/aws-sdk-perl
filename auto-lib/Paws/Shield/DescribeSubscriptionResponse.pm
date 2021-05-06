
package Paws::Shield::DescribeSubscriptionResponse;
  use Moose;
  has Subscription => (is => 'ro', isa => 'Paws::Shield::Subscription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeSubscriptionResponse

=head1 ATTRIBUTES


=head2 Subscription => L<Paws::Shield::Subscription>

The AWS Shield Advanced subscription details for an account.


=head2 _request_id => Str


=cut

1;