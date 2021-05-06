
package Paws::MTurk::ListQualificationTypesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has NumResults => (is => 'ro', isa => 'Int');
  has QualificationTypes => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::QualificationType]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListQualificationTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 NumResults => Int

The number of Qualification types on this page in the filtered results
list, equivalent to the number of types this operation returns.


=head2 QualificationTypes => ArrayRef[L<Paws::MTurk::QualificationType>]

The list of QualificationType elements returned by the query.


=head2 _request_id => Str


=cut

1;