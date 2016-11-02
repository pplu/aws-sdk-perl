
package Paws::DeviceFarm::InstallToRemoteAccessSessionResult;
  use Moose;
  has AppUpload => (is => 'ro', isa => 'Paws::DeviceFarm::Upload', traits => ['Unwrapped'], xmlname => 'appUpload' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::InstallToRemoteAccessSessionResult

=head1 ATTRIBUTES


=head2 AppUpload => L<Paws::DeviceFarm::Upload>




=head2 _request_id => Str


=cut

1;