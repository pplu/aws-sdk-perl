
package Paws::AlexaForBusiness::SearchContactsResponse;
  use Moose;
  has Contacts => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::ContactData]');
  has NextToken => (is => 'ro', isa => 'Str');
  has TotalCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchContactsResponse

=head1 ATTRIBUTES


=head2 Contacts => ArrayRef[L<Paws::AlexaForBusiness::ContactData>]

The contacts that meet the specified set of filter criteria, in sort
order.


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 TotalCount => Int

The total number of contacts returned.


=head2 _request_id => Str


=cut

1;