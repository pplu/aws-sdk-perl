
package Paws::IoTEvents::DescribeLoggingOptionsResponse;
  use Moose;
  has LoggingOptions => (is => 'ro', isa => 'Paws::IoTEvents::LoggingOptions', traits => ['NameInRequest'], request_name => 'loggingOptions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DescribeLoggingOptionsResponse

=head1 ATTRIBUTES


=head2 LoggingOptions => L<Paws::IoTEvents::LoggingOptions>

The current settings of the AWS IoT Events logging options.


=head2 _request_id => Str


=cut

