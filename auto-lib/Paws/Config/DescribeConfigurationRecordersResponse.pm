
package Paws::Config::DescribeConfigurationRecordersResponse;
  use Moose;
  has ConfigurationRecorders => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigurationRecorder]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigurationRecordersResponse

=head1 ATTRIBUTES


=head2 ConfigurationRecorders => ArrayRef[L<Paws::Config::ConfigurationRecorder>]

A list that contains the descriptions of the specified configuration
recorders.


=head2 _request_id => Str


=cut

1;