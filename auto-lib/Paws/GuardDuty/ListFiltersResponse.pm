
package Paws::GuardDuty::ListFiltersResponse;
  use Moose;
  has FilterNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'filterNames', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListFiltersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FilterNames => ArrayRef[Str|Undef]

A list of filter names


=head2 NextToken => Str

Pagination parameter to be used on the next list operation to retrieve
more items.


=head2 _request_id => Str


=cut

