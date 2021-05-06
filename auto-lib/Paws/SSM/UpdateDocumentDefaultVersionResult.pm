
package Paws::SSM::UpdateDocumentDefaultVersionResult;
  use Moose;
  has Description => (is => 'ro', isa => 'Paws::SSM::DocumentDefaultVersionDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateDocumentDefaultVersionResult

=head1 ATTRIBUTES


=head2 Description => L<Paws::SSM::DocumentDefaultVersionDescription>

The description of a custom document that you want to set as the
default version.


=head2 _request_id => Str


=cut

1;