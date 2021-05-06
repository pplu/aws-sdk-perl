
package Paws::StorageGateway::CreateTapeWithBarcodeOutput;
  use Moose;
  has TapeARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateTapeWithBarcodeOutput

=head1 ATTRIBUTES


=head2 TapeARN => Str

A unique Amazon Resource Name (ARN) that represents the virtual tape
that was created.


=head2 _request_id => Str


=cut

1;