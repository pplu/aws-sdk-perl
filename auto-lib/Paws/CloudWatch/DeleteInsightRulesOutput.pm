
package Paws::CloudWatch::DeleteInsightRulesOutput;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::PartialFailure]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DeleteInsightRulesOutput

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::CloudWatch::PartialFailure>]

An array listing the rules that could not be deleted. You cannot delete
built-in rules.


=head2 _request_id => Str


=cut

