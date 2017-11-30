
package Paws::MQ::ListBrokersResponse;
  use Moose;
  has BrokerSummaries => (is => 'ro', isa => 'ArrayRef[Paws::MQ::BrokerSummary]', traits => ['NameInRequest'], request_name => 'brokerSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListBrokersResponse

=head1 ATTRIBUTES


=head2 BrokerSummaries => ArrayRef[L<Paws::MQ::BrokerSummary>]

A list of information about all brokers.


=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.


=head2 _request_id => Str


=cut

