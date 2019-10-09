
package Paws::S3::GetBucketMetricsConfigurationOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_MetricsConfiguration/;
  has MetricsConfiguration => (is => 'ro', isa => S3_MetricsConfiguration);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'MetricsConfiguration');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MetricsConfiguration' => {
                                           'class' => 'Paws::S3::MetricsConfiguration',
                                           'type' => 'S3_MetricsConfiguration'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketMetricsConfigurationOutput

=head1 ATTRIBUTES


=head2 MetricsConfiguration => S3_MetricsConfiguration

Specifies the metrics configuration.




=cut

