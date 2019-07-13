
package Paws::IoTAnalytics::CreateDatasetContentResponse;
  use Moose;
  has VersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CreateDatasetContentResponse

=head1 ATTRIBUTES


=head2 VersionId => Str

The version ID of the data set contents which are being created.


=head2 _request_id => Str


=cut

