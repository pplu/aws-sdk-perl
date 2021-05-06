
package Paws::OpsWorks::DescribeInstancesResult;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Instance]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeInstancesResult

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::OpsWorks::Instance>]

An array of C<Instance> objects that describe the instances.


=head2 _request_id => Str


=cut

1;