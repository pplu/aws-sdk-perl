
package Paws::ApplicationInsights::ListLogPatternSetsResponse;
  use Moose;
  has LogPatternSets => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceGroupName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ListLogPatternSetsResponse

=head1 ATTRIBUTES


=head2 LogPatternSets => ArrayRef[Str|Undef]

The list of log pattern sets.


=head2 NextToken => Str

The token used to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ResourceGroupName => Str

The name of the resource group.


=head2 _request_id => Str


=cut

1;