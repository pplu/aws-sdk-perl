
package Paws::SimpleWorkflow::DomainInfos {
  use Moose;
  with 'Paws::API::ResultParser';
  has domainInfos => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::DomainInfo]', required => 1);
  has nextPageToken => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DomainInfos

=head1 ATTRIBUTES

=head2 B<REQUIRED> domainInfos => ArrayRef[Paws::SimpleWorkflow::DomainInfo]

  

A list of DomainInfo structures.









=head2 nextPageToken => Str

  

Returns a value if the results are paginated. To get the next page of
results, repeat the request specifying this token and all other
arguments unchanged.











=cut

1;