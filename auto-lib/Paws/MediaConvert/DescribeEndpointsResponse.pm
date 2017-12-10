
package Paws::MediaConvert::DescribeEndpointsResponse;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::Endpoint]', traits => ['NameInRequest'], request_name => 'endpoints');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DescribeEndpointsResponse

=head1 ATTRIBUTES


=head2 Endpoints => ArrayRef[L<Paws::MediaConvert::Endpoint>]

List of endpoints


=head2 NextToken => Str

Use this string to request the next batch of endpoints.


=head2 _request_id => Str


=cut

