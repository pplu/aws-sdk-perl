
package Paws::IoT::GetOTAUpdateResponse;
  use Moose;
  has OtaUpdateInfo => (is => 'ro', isa => 'Paws::IoT::OTAUpdateInfo', traits => ['NameInRequest'], request_name => 'otaUpdateInfo');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetOTAUpdateResponse

=head1 ATTRIBUTES


=head2 OtaUpdateInfo => L<Paws::IoT::OTAUpdateInfo>

The OTA update info.


=head2 _request_id => Str


=cut

