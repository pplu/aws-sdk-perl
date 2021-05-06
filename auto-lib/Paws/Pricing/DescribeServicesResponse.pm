
package Paws::Pricing::DescribeServicesResponse;
  use Moose;
  has FormatVersion => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Services => (is => 'ro', isa => 'ArrayRef[Paws::Pricing::Service]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Pricing::DescribeServicesResponse

=head1 ATTRIBUTES


=head2 FormatVersion => Str

The format version of the response. For example, C<aws_v1>.


=head2 NextToken => Str

The pagination token for the next set of retreivable results.


=head2 Services => ArrayRef[L<Paws::Pricing::Service>]

The service metadata for the service or services in the response.


=head2 _request_id => Str


=cut

1;