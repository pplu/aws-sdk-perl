
package Paws::S3::GetBucketAnalyticsConfigurationOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_AnalyticsConfiguration/;
  has AnalyticsConfiguration => (is => 'ro', isa => S3_AnalyticsConfiguration);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'AnalyticsConfiguration');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AnalyticsConfiguration' => {
                                             'class' => 'Paws::S3::AnalyticsConfiguration',
                                             'type' => 'S3_AnalyticsConfiguration'
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

Paws::S3::GetBucketAnalyticsConfigurationOutput

=head1 ATTRIBUTES


=head2 AnalyticsConfiguration => S3_AnalyticsConfiguration

The configuration and any analyses for the analytics filter.




=cut

