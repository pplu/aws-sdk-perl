
package Paws::Support::DescribeCasesResponse;
  use Moose;
  has Cases => (is => 'ro', isa => 'ArrayRef[Paws::Support::CaseDetails]', traits => ['Unwrapped'], xmlname => 'cases' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeCasesResponse

=head1 ATTRIBUTES


=head2 Cases => ArrayRef[L<Paws::Support::CaseDetails>]

  The details for the cases that match the request.

=head2 NextToken => Str

  A resumption point for pagination.


=cut

1;