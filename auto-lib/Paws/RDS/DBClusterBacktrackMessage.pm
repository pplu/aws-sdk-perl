
package Paws::RDS::DBClusterBacktrackMessage;
  use Moose;
  has DBClusterBacktracks => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBClusterBacktrack]', request_name => 'DBClusterBacktrack', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterBacktrackMessage

=head1 ATTRIBUTES


=head2 DBClusterBacktracks => ArrayRef[L<Paws::RDS::DBClusterBacktrack>]

Contains a list of backtracks for the user.


=head2 Marker => Str

A pagination token that can be used in a subsequent
DescribeDBClusterBacktracks request.


=head2 _request_id => Str


=cut

