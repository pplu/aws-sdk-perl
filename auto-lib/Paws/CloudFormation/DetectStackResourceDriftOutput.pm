
package Paws::CloudFormation::DetectStackResourceDriftOutput;
  use Moose;
  has StackResourceDrift => (is => 'ro', isa => 'Paws::CloudFormation::StackResourceDrift', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DetectStackResourceDriftOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> StackResourceDrift => L<Paws::CloudFormation::StackResourceDrift>

Information about whether the resource's actual configuration has
drifted from its expected template configuration, including actual and
expected property values and any differences detected.


=head2 _request_id => Str


=cut

