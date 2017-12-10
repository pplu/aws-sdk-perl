
package Paws::MQ::ListUsersResponse;
  use Moose;
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::MQ::UserSummary]', traits => ['NameInRequest'], request_name => 'users');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListUsersResponse

=head1 ATTRIBUTES


=head2 BrokerId => Str

Required. The unique ID that Amazon MQ generates for the broker.


=head2 MaxResults => Int

Required. The maximum number of ActiveMQ users that can be returned per
page (20 by default). This value must be an integer from 5 to 100.


=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.


=head2 Users => ArrayRef[L<Paws::MQ::UserSummary>]

Required. The list of all ActiveMQ usernames for the specified broker.


=head2 _request_id => Str


=cut

