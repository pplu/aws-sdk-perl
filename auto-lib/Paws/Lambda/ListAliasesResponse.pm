
package Paws::Lambda::ListAliasesResponse;
  use Moose;
  has Aliases => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::AliasConfiguration]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListAliasesResponse

=head1 ATTRIBUTES


=head2 Aliases => ArrayRef[L<Paws::Lambda::AliasConfiguration>]

A list of aliases.


=head2 NextMarker => Str

Pagination token included if more results are available.


=head2 _request_id => Str


=cut

