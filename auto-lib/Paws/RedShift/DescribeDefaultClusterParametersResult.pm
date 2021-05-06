
package Paws::RedShift::DescribeDefaultClusterParametersResult;
  use Moose;
  has DefaultClusterParameters => (is => 'ro', isa => 'Paws::RedShift::DefaultClusterParameters');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeDefaultClusterParametersResult

=head1 ATTRIBUTES


=head2 DefaultClusterParameters => L<Paws::RedShift::DefaultClusterParameters>




=head2 _request_id => Str


=cut

