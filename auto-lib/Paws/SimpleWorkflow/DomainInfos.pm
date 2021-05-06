
package Paws::SimpleWorkflow::DomainInfos;
  use Moose;
  has DomainInfos => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::DomainInfo]', traits => ['NameInRequest'], request_name => 'domainInfos' , required => 1);
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DomainInfos

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainInfos => ArrayRef[L<Paws::SimpleWorkflow::DomainInfo>]

A list of DomainInfo structures.


=head2 NextPageToken => Str

If a C<NextPageToken> was returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<nextPageToken>. Keep all other
arguments unchanged.

The configured C<maximumPageSize> determines how many results can be
returned in a single call.


=head2 _request_id => Str


=cut

1;