
package Paws::Config::DescribeConfigurationRecorderStatusResponse;
  use Moose;
  has ConfigurationRecordersStatus => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigurationRecorderStatus]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigurationRecorderStatusResponse

=head1 ATTRIBUTES


=head2 ConfigurationRecordersStatus => ArrayRef[L<Paws::Config::ConfigurationRecorderStatus>]

A list that contains status of the specified recorders.


=head2 _request_id => Str


=cut

1;