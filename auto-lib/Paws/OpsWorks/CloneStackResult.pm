
package Paws::OpsWorks::CloneStackResult;
  use Moose;
  has StackId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CloneStackResult

=head1 ATTRIBUTES


=head2 StackId => Str

The cloned stack ID.


=head2 _request_id => Str


=cut

1;