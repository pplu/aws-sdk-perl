
package Paws::Macie2::GetFindingStatisticsResponse;
  use Moose;
  has CountsByGroup => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::GroupCount]', traits => ['NameInRequest'], request_name => 'countsByGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetFindingStatisticsResponse

=head1 ATTRIBUTES


=head2 CountsByGroup => ArrayRef[L<Paws::Macie2::GroupCount>]

An array of objects, one for each group of findings that meet the
filter criteria specified in the request.


=head2 _request_id => Str


=cut

