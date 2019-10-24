
package Paws::IoTAnalytics::DescribeLoggingOptionsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_LoggingOptions/;
  has LoggingOptions => (is => 'ro', isa => IoTAnalytics_LoggingOptions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LoggingOptions' => {
                                     'class' => 'Paws::IoTAnalytics::LoggingOptions',
                                     'type' => 'IoTAnalytics_LoggingOptions'
                                   }
             },
  'NameInRequest' => {
                       'LoggingOptions' => 'loggingOptions'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeLoggingOptionsResponse

=head1 ATTRIBUTES


=head2 LoggingOptions => IoTAnalytics_LoggingOptions

The current settings of the AWS IoT Analytics logging options.


=head2 _request_id => Str


=cut

