
package Paws::Snowball::CreateClusterResult;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CreateClusterResult

=head1 ATTRIBUTES


=head2 ClusterId => Str

The automatically generated ID for a cluster.


=head2 _request_id => Str


=cut

1;