
package Paws::DeviceFarm::CreateUploadResult;
  use Moose;
  has Upload => (is => 'ro', isa => 'Paws::DeviceFarm::Upload', traits => ['Unwrapped'], xmlname => 'upload' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateUploadResult

=head1 ATTRIBUTES

=head2 Upload => L<Paws::DeviceFarm::Upload>

  The newly created upload.


=cut

1;