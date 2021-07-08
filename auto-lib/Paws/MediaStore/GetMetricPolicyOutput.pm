
package Paws::MediaStore::GetMetricPolicyOutput;
  use Moose;
  has MetricPolicy => (is => 'ro', isa => 'Paws::MediaStore::MetricPolicy', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::GetMetricPolicyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricPolicy => L<Paws::MediaStore::MetricPolicy>

The metric policy that is associated with the specific container.


=head2 _request_id => Str


=cut

1;