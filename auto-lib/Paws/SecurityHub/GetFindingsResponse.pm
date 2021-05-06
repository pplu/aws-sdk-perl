
package Paws::SecurityHub::GetFindingsResponse;
  use Moose;
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsSecurityFinding]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::SecurityHub::AwsSecurityFinding>]

The findings that matched the filters specified in the request.


=head2 NextToken => Str

The pagination token to use to request the next page of results.


=head2 _request_id => Str


=cut

