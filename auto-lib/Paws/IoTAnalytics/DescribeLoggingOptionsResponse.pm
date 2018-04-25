
package Paws::IoTAnalytics::DescribeLoggingOptionsResponse;
  use Moose;
  has LoggingOptions => (is => 'ro', isa => 'Paws::IoTAnalytics::LoggingOptions', traits => ['NameInRequest'], request_name => 'loggingOptions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeLoggingOptionsResponse

=head1 ATTRIBUTES


=head2 LoggingOptions => L<Paws::IoTAnalytics::LoggingOptions>

The current settings of the AWS IoT Analytics logging options.


=head2 _request_id => Str


=cut

