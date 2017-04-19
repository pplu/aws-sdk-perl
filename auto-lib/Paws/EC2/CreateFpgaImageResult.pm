
package Paws::EC2::CreateFpgaImageResult;
  use Moose;
  has FpgaImageGlobalId => (is => 'ro', isa => 'Str', xmlname => 'fpgaImageGlobalId', traits => ['Unwrapped',]);
  has FpgaImageId => (is => 'ro', isa => 'Str', xmlname => 'fpgaImageId', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateFpgaImageResult

=head1 ATTRIBUTES


=head2 FpgaImageGlobalId => Str

The global FPGA image identifier (AGFI ID).


=head2 FpgaImageId => Str

The FPGA image identifier (AFI ID).


=head2 _request_id => Str


=cut

