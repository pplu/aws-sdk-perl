
package Paws::Lambda::Concurrency;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Lambda::Types qw//;
  has ReservedConcurrentExecutions => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReservedConcurrentExecutions' => {
                                                   'type' => 'Int'
                                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::Concurrency

=head1 ATTRIBUTES


=head2 ReservedConcurrentExecutions => Int

The number of concurrent executions that are reserved for this
function. For more information, see Managing Concurrency
(https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html).


=head2 _request_id => Str


=cut

