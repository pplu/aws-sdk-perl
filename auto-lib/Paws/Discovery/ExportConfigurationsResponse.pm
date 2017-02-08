
package Paws::Discovery::ExportConfigurationsResponse;
  use Moose;
  has ExportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ExportConfigurationsResponse

=head1 ATTRIBUTES


=head2 ExportId => Str

A unique identifier that you can use to query the export status.


=head2 _request_id => Str


=cut

1;