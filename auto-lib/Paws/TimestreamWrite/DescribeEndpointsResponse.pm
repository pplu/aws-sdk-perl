
package Paws::TimestreamWrite::DescribeEndpointsResponse;
  use Moose;
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamWrite::Endpoint]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::DescribeEndpointsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Endpoints => ArrayRef[L<Paws::TimestreamWrite::Endpoint>]

An C<Endpoints> object is returned when a C<DescribeEndpoints> request
is made.


=head2 _request_id => Str


=cut

1;