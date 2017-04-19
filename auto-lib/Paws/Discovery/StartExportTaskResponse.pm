
package Paws::Discovery::StartExportTaskResponse;
  use Moose;
  has ExportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartExportTaskResponse

=head1 ATTRIBUTES


=head2 ExportId => Str

A unique identifier used to query the status of an export request.


=head2 _request_id => Str


=cut

1;