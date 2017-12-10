
package Paws::Glue::GetClassifierResponse;
  use Moose;
  has Classifier => (is => 'ro', isa => 'Paws::Glue::Classifier');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetClassifierResponse

=head1 ATTRIBUTES


=head2 Classifier => L<Paws::Glue::Classifier>

The requested classifier.


=head2 _request_id => Str


=cut

1;