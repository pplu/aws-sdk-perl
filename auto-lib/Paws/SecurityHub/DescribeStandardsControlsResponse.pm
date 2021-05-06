
package Paws::SecurityHub::DescribeStandardsControlsResponse;
  use Moose;
  has Controls => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StandardsControl]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeStandardsControlsResponse

=head1 ATTRIBUTES


=head2 Controls => ArrayRef[L<Paws::SecurityHub::StandardsControl>]

A list of compliance standards controls.


=head2 NextToken => Str

The pagination token to use to request the next page of results.


=head2 _request_id => Str


=cut

