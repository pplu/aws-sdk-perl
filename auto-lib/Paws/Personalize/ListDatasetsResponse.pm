
package Paws::Personalize::ListDatasetsResponse;
  use Moose;
  has Datasets => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::DatasetSummary]', traits => ['NameInRequest'], request_name => 'datasets' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListDatasetsResponse

=head1 ATTRIBUTES


=head2 Datasets => ArrayRef[L<Paws::Personalize::DatasetSummary>]

An array of C<Dataset> objects. Each object provides metadata
information.


=head2 NextToken => Str

A token for getting the next set of datasets (if they exist).


=head2 _request_id => Str


=cut

1;