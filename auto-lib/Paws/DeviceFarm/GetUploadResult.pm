
package Paws::DeviceFarm::GetUploadResult;
  use Moose;
  has Upload => (is => 'ro', isa => 'Paws::DeviceFarm::Upload', traits => ['Unwrapped'], xmlname => 'upload' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetUploadResult

=head1 ATTRIBUTES


=head2 Upload => L<Paws::DeviceFarm::Upload>

  


=cut

1;