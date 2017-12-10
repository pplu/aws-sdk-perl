
package Paws::S3::GetBucketAnalyticsConfigurationOutput;
  use Moose;
  has AnalyticsConfiguration => (is => 'ro', isa => 'Paws::S3::AnalyticsConfiguration');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'AnalyticsConfiguration');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketAnalyticsConfigurationOutput

=head1 ATTRIBUTES


=head2 AnalyticsConfiguration => L<Paws::S3::AnalyticsConfiguration>

The configuration and any analyses for the analytics filter.




=cut

