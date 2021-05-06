
package Paws::CodeCommit::GetBlobOutput;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'content' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetBlobOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

The content of the blob, usually a file.


=head2 _request_id => Str


=cut

1;