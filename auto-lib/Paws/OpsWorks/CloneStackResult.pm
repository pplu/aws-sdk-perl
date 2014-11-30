
package Paws::OpsWorks::CloneStackResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has StackId => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CloneStackResult

=head1 ATTRIBUTES

=head2 StackId => Str

  

The cloned stack ID.











=cut

1;