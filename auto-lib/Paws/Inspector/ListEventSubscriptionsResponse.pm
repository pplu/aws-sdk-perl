
package Paws::Inspector::ListEventSubscriptionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Subscription]', traits => ['NameInRequest'], request_name => 'subscriptions' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListEventSubscriptionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to null.


=head2 B<REQUIRED> Subscriptions => ArrayRef[L<Paws::Inspector::Subscription>]

Details of the returned event subscriptions.


=head2 _request_id => Str


=cut

1;