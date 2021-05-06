
package Paws::DS::DescribeEventTopicsResult;
  use Moose;
  has EventTopics => (is => 'ro', isa => 'ArrayRef[Paws::DS::EventTopic]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeEventTopicsResult

=head1 ATTRIBUTES


=head2 EventTopics => ArrayRef[L<Paws::DS::EventTopic>]

A list of SNS topic names that receive status messages from the
specified Directory ID.


=head2 _request_id => Str


=cut

1;