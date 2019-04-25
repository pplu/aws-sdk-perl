
package Paws::EC2::ExportClientVpnClientConfigurationResult;
  use Moose;
  has ClientConfiguration => (is => 'ro', isa => 'Str', request_name => 'clientConfiguration', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ExportClientVpnClientConfigurationResult

=head1 ATTRIBUTES


=head2 ClientConfiguration => Str

The contents of the Client VPN endpoint configuration file.


=head2 _request_id => Str


=cut

