
package Paws::Glacier::UploadMultipartPartOutput;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-sha256-tree-hash');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::UploadMultipartPartOutput

=head1 ATTRIBUTES


=head2 Checksum => Str

The SHA256 tree hash that Amazon Glacier computed for the uploaded
part.


=head2 _request_id => Str


=cut

