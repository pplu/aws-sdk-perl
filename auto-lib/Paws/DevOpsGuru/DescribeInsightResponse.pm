
package Paws::DevOpsGuru::DescribeInsightResponse;
  use Moose;
  has ProactiveInsight => (is => 'ro', isa => 'Paws::DevOpsGuru::ProactiveInsight');
  has ReactiveInsight => (is => 'ro', isa => 'Paws::DevOpsGuru::ReactiveInsight');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeInsightResponse

=head1 ATTRIBUTES


=head2 ProactiveInsight => L<Paws::DevOpsGuru::ProactiveInsight>

A C<ProactiveInsight> object that represents the requested insight.


=head2 ReactiveInsight => L<Paws::DevOpsGuru::ReactiveInsight>

A C<ReactiveInsight> object that represents the requested insight.


=head2 _request_id => Str


=cut

