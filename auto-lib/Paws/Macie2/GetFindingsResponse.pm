
package Paws::Macie2::GetFindingsResponse;
  use Moose;
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::Finding]', traits => ['NameInRequest'], request_name => 'findings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetFindingsResponse

=head1 ATTRIBUTES


=head2 Findings => ArrayRef[L<Paws::Macie2::Finding>]

An array of objects, one for each finding that meets the criteria
specified in the request.


=head2 _request_id => Str


=cut

