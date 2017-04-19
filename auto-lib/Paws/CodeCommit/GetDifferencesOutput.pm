
package Paws::CodeCommit::GetDifferencesOutput;
  use Moose;
  has Differences => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::Difference]', traits => ['NameInRequest'], request_name => 'differences' );
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetDifferencesOutput

=head1 ATTRIBUTES


=head2 Differences => ArrayRef[L<Paws::CodeCommit::Difference>]

A differences data type object that contains information about the
differences, including whether the difference is added, modified, or
deleted (A, D, M).


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 _request_id => Str


=cut

1;