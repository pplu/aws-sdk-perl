
package Paws::Lambda::Concurrency;
  use Moose;
  has ReservedConcurrentExecutions => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::Concurrency

=head1 ATTRIBUTES


=head2 ReservedConcurrentExecutions => Int

The number of concurrent executions reserved for this function. For
more information, see Managing Concurrency
(http://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html).


=head2 _request_id => Str


=cut

