
package Paws::CloudHSMv2::CopyBackupToRegionResponse;
  use Moose;
  has DestinationBackup => (is => 'ro', isa => 'Paws::CloudHSMv2::DestinationBackup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::CopyBackupToRegionResponse

=head1 ATTRIBUTES


=head2 DestinationBackup => L<Paws::CloudHSMv2::DestinationBackup>




=head2 _request_id => Str


=cut

1;