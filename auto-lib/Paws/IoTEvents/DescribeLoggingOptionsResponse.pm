
package Paws::IoTEvents::DescribeLoggingOptionsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw/IoTEvents_LoggingOptions/;
  has LoggingOptions => (is => 'ro', isa => IoTEvents_LoggingOptions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LoggingOptions' => {
                                     'class' => 'Paws::IoTEvents::LoggingOptions',
                                     'type' => 'IoTEvents_LoggingOptions'
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

Paws::IoTEvents::DescribeLoggingOptionsResponse

=head1 ATTRIBUTES


=head2 LoggingOptions => IoTEvents_LoggingOptions

The current settings of the AWS IoT Events logging options.


=head2 _request_id => Str


=cut

