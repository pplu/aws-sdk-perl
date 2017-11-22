
package Paws::Glue::GetClassifiersResponse;
  use Moose;
  has Classifiers => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Classifier]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetClassifiersResponse

=head1 ATTRIBUTES


=head2 Classifiers => ArrayRef[L<Paws::Glue::Classifier>]

The requested list of classifier objects.


=head2 NextToken => Str

A continuation token.


=head2 _request_id => Str


=cut

1;