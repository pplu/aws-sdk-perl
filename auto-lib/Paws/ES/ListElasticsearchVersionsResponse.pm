
package Paws::ES::ListElasticsearchVersionsResponse;
  use Moose;
  has ElasticsearchVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListElasticsearchVersionsResponse

=head1 ATTRIBUTES


=head2 ElasticsearchVersions => ArrayRef[Str|Undef]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

