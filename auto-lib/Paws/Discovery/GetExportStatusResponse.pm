
package Paws::Discovery::GetExportStatusResponse;
  use Moose;
  has ExportId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'exportId' );
  has ExportStatusMap => (is => 'ro', isa => 'Paws::Discovery::ExportStatusMap', traits => ['Unwrapped'], xmlname => 'exportStatusMap' );


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::GetExportStatusResponse

=head1 ATTRIBUTES


=head2 ExportId => Str

Returns configuration details, including the configuration ID,
attribute names, and attribute values.



=head2 ExportStatusMap => L<Paws::Discovery::ExportStatusMap>

Returns export details. When the status is complete, the response
includes a URL for an Amazon S3 bucket where you can view the data in a
CSV file.




=cut

1;