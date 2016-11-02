
package Paws::StorageGateway::RemoveTagsFromResourceOutput;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::RemoveTagsFromResourceOutput

=head1 ATTRIBUTES


=head2 ResourceARN => Str

The Amazon Resource Name (ARN) of the resource that the tags were
removed from.


=head2 _request_id => Str


=cut

1;