
package Paws::CloudSearch::DeleteDomainResponse;
  use Moose;
  has DomainStatus => (is => 'ro', isa => 'Paws::CloudSearch::DomainStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DeleteDomainResponse

=head1 ATTRIBUTES


=head2 DomainStatus => L<Paws::CloudSearch::DomainStatus>




=head2 _request_id => Str


=cut

