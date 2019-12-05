
package Paws::CloudWatch::DisableInsightRulesOutput;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::PartialFailure]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DisableInsightRulesOutput

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::CloudWatch::PartialFailure>]

An array listing the rules that could not be disabled. You cannot
disable built-in rules.


=head2 _request_id => Str


=cut

