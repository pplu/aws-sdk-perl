
package Paws::IoTSiteWise::DescribeLoggingOptionsResponse;
  use Moose;
  has LoggingOptions => (is => 'ro', isa => 'Paws::IoTSiteWise::LoggingOptions', traits => ['NameInRequest'], request_name => 'loggingOptions', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeLoggingOptionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoggingOptions => L<Paws::IoTSiteWise::LoggingOptions>

The current logging options.


=head2 _request_id => Str


=cut

