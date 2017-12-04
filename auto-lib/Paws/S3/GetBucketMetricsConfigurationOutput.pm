
package Paws::S3::GetBucketMetricsConfigurationOutput;
  use Moose;
  has MetricsConfiguration => (is => 'ro', isa => 'Paws::S3::MetricsConfiguration');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'MetricsConfiguration');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketMetricsConfigurationOutput

=head1 ATTRIBUTES


=head2 MetricsConfiguration => L<Paws::S3::MetricsConfiguration>

Specifies the metrics configuration.




=cut

