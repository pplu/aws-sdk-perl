
package Paws::AlexaForBusiness::SearchUsersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TotalCount => (is => 'ro', isa => 'Int');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::UserData]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 TotalCount => Int

The total number of users returned.


=head2 Users => ArrayRef[L<Paws::AlexaForBusiness::UserData>]

The users that meet the specified set of filter criteria, in sort
order.


=head2 _request_id => Str


=cut

1;