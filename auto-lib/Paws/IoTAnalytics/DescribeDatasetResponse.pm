
package Paws::IoTAnalytics::DescribeDatasetResponse;
  use Moose;
  has Dataset => (is => 'ro', isa => 'Paws::IoTAnalytics::Dataset', traits => ['NameInRequest'], request_name => 'dataset');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 Dataset => L<Paws::IoTAnalytics::Dataset>

An object that contains information about the data set.


=head2 _request_id => Str


=cut

