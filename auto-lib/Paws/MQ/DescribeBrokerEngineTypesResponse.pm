
package Paws::MQ::DescribeBrokerEngineTypesResponse;
  use Moose;
  has BrokerEngineTypes => (is => 'ro', isa => 'ArrayRef[Paws::MQ::BrokerEngineType]', traits => ['NameInRequest'], request_name => 'brokerEngineTypes');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeBrokerEngineTypesResponse

=head1 ATTRIBUTES


=head2 BrokerEngineTypes => ArrayRef[L<Paws::MQ::BrokerEngineType>]

List of available engine types and versions.


=head2 MaxResults => Int

Required. The maximum number of engine types that can be returned per
page (20 by default). This value must be an integer from 5 to 100.


=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.


=head2 _request_id => Str


=cut

