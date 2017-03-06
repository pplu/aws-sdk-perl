
package Paws::MTurk::ListHITsForQualificationTypeResponse;
  use Moose;
  has HITs => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::HIT]');
  has NextToken => (is => 'ro', isa => 'Str');
  has NumResults => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListHITsForQualificationTypeResponse

=head1 ATTRIBUTES


=head2 HITs => ArrayRef[L<Paws::MTurk::HIT>]

The list of HIT elements returned by the query.


=head2 NextToken => Str




=head2 NumResults => Int

The number of HITs on this page in the filtered results list,
equivalent to the number of HITs being returned by this call.


=head2 _request_id => Str


=cut

1;