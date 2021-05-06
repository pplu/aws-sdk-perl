
package Paws::MTurk::ListWorkersWithQualificationTypeResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has NumResults => (is => 'ro', isa => 'Int');
  has Qualifications => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::Qualification]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListWorkersWithQualificationTypeResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 NumResults => Int

The number of Qualifications on this page in the filtered results list,
equivalent to the number of Qualifications being returned by this call.


=head2 Qualifications => ArrayRef[L<Paws::MTurk::Qualification>]

The list of Qualification elements returned by this call.


=head2 _request_id => Str


=cut

1;