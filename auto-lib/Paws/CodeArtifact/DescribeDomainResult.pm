
package Paws::CodeArtifact::DescribeDomainResult;
  use Moose;
  has Domain => (is => 'ro', isa => 'Paws::CodeArtifact::DomainDescription', traits => ['NameInRequest'], request_name => 'domain');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DescribeDomainResult

=head1 ATTRIBUTES


=head2 Domain => L<Paws::CodeArtifact::DomainDescription>




=head2 _request_id => Str


=cut

