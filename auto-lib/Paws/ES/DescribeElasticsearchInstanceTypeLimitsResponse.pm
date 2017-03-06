
package Paws::ES::DescribeElasticsearchInstanceTypeLimitsResponse;
  use Moose;
  has LimitsByRole => (is => 'ro', isa => 'Paws::ES::LimitsByRole');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeElasticsearchInstanceTypeLimitsResponse

=head1 ATTRIBUTES


=head2 LimitsByRole => L<Paws::ES::LimitsByRole>




=head2 _request_id => Str


=cut

