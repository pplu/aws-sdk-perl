
package Paws::OpsWorksCM::ExportServerEngineAttributeResponse;
  use Moose;
  has EngineAttribute => (is => 'ro', isa => 'Paws::OpsWorksCM::EngineAttribute');
  has ServerName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::ExportServerEngineAttributeResponse

=head1 ATTRIBUTES


=head2 EngineAttribute => L<Paws::OpsWorksCM::EngineAttribute>

The requested engine attribute pair with attribute name and value.


=head2 ServerName => Str

The server name used in the request.


=head2 _request_id => Str


=cut

1;