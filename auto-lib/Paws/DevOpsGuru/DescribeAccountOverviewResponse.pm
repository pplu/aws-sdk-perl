
package Paws::DevOpsGuru::DescribeAccountOverviewResponse;
  use Moose;
  has MeanTimeToRecoverInMilliseconds => (is => 'ro', isa => 'Int', required => 1);
  has ProactiveInsights => (is => 'ro', isa => 'Int', required => 1);
  has ReactiveInsights => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeAccountOverviewResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeanTimeToRecoverInMilliseconds => Int

The Mean Time to Recover (MTTR) for all closed insights that were
created during the time range passed in.


=head2 B<REQUIRED> ProactiveInsights => Int

An integer that specifies the number of open proactive insights in your
AWS account that were created during the time range passed in.


=head2 B<REQUIRED> ReactiveInsights => Int

An integer that specifies the number of open reactive insights in your
AWS account that were created during the time range passed in.


=head2 _request_id => Str


=cut

