
package Paws::DynamoDB::DescribeEndpointsResponse;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::Endpoint]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeEndpointsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Endpoints => ArrayRef[L<Paws::DynamoDB::Endpoint>]

List of endpoints.


=head2 _request_id => Str


=cut

1;