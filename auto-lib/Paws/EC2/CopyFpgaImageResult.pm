
package Paws::EC2::CopyFpgaImageResult;
  use Moose;
  has FpgaImageId => (is => 'ro', isa => 'Str', request_name => 'fpgaImageId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopyFpgaImageResult

=head1 ATTRIBUTES


=head2 FpgaImageId => Str

The ID of the new AFI.


=head2 _request_id => Str


=cut

