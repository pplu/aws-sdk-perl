
package Paws::OpsWorks::CreateLayerResult;
  use Moose;
  has LayerId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateLayerResult

=head1 ATTRIBUTES


=head2 LayerId => Str

The layer ID.


=head2 _request_id => Str


=cut

1;