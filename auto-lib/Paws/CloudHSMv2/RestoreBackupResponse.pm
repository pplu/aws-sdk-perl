
package Paws::CloudHSMv2::RestoreBackupResponse;
  use Moose;
  has Backup => (is => 'ro', isa => 'Paws::CloudHSMv2::Backup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::RestoreBackupResponse

=head1 ATTRIBUTES


=head2 Backup => L<Paws::CloudHSMv2::Backup>

Information on the C<Backup> object created.


=head2 _request_id => Str


=cut

1;