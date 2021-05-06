
package Paws::EC2::CreateFpgaImageResult;
  use Moose;
  has FpgaImageGlobalId => (is => 'ro', isa => 'Str', request_name => 'fpgaImageGlobalId', traits => ['NameInRequest',]);
  has FpgaImageId => (is => 'ro', isa => 'Str', request_name => 'fpgaImageId', traits => ['NameInRequest',]);

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

