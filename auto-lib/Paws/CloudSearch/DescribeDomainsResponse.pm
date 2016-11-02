
package Paws::CloudSearch::DescribeDomainsResponse;
  use Moose;
  has DomainStatusList => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearch::DomainStatus]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeDomainsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainStatusList => ArrayRef[L<Paws::CloudSearch::DomainStatus>]




=head2 _request_id => Str


=cut

