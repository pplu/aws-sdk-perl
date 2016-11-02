
package Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionsResult;
  use Moose;
  has ManagedActions => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ManagedAction]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionsResult

=head1 ATTRIBUTES


=head2 ManagedActions => ArrayRef[L<Paws::ElasticBeanstalk::ManagedAction>]

A list of upcoming and in-progress managed actions.


=head2 _request_id => Str


=cut

