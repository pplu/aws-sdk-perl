
package Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionHistoryResult;
  use Moose;
  has ManagedActionHistoryItems => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ManagedActionHistoryItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionHistoryResult

=head1 ATTRIBUTES


=head2 ManagedActionHistoryItems => ArrayRef[L<Paws::ElasticBeanstalk::ManagedActionHistoryItem>]

A list of completed and failed managed actions.


=head2 NextToken => Str

A pagination token that you pass to
DescribeEnvironmentManagedActionHistory to get the next page of
results.


=head2 _request_id => Str


=cut

