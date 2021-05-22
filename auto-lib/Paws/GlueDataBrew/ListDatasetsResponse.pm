
package Paws::GlueDataBrew::ListDatasetsResponse;
  use Moose;
  has Datasets => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::Dataset]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::ListDatasetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Datasets => ArrayRef[L<Paws::GlueDataBrew::Dataset>]

A list of datasets that are defined.


=head2 NextToken => Str

A token that you can use in a subsequent call to retrieve the next set
of results.


=head2 _request_id => Str


=cut

