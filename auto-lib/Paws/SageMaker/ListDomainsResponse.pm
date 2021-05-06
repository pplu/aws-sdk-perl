
package Paws::SageMaker::ListDomainsResponse;
  use Moose;
  has Domains => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::DomainDetails]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListDomainsResponse

=head1 ATTRIBUTES


=head2 Domains => ArrayRef[L<Paws::SageMaker::DomainDetails>]

The list of domains.


=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.


=head2 _request_id => Str


=cut

1;