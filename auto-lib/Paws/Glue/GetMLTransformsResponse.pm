
package Paws::Glue::GetMLTransformsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Transforms => (is => 'ro', isa => 'ArrayRef[Paws::Glue::MLTransform]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetMLTransformsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token, if more results are available.


=head2 B<REQUIRED> Transforms => ArrayRef[L<Paws::Glue::MLTransform>]

A list of machine learning transforms.


=head2 _request_id => Str


=cut

1;