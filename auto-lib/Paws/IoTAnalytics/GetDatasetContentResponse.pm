
package Paws::IoTAnalytics::GetDatasetContentResponse;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetEntry]', traits => ['NameInRequest'], request_name => 'entries');
  has Status => (is => 'ro', isa => 'Paws::IoTAnalytics::DatasetContentStatus', traits => ['NameInRequest'], request_name => 'status');
  has Timestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'timestamp');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::GetDatasetContentResponse

=head1 ATTRIBUTES


=head2 Entries => ArrayRef[L<Paws::IoTAnalytics::DatasetEntry>]

A list of "DatasetEntry" objects.


=head2 Status => L<Paws::IoTAnalytics::DatasetContentStatus>

The status of the data set content.


=head2 Timestamp => Str

The time when the request was made.


=head2 _request_id => Str


=cut

