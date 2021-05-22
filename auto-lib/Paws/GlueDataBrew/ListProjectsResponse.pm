
package Paws::GlueDataBrew::ListProjectsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Projects => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::Project]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::ListProjectsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that you can use in a subsequent call to retrieve the next set
of results.


=head2 B<REQUIRED> Projects => ArrayRef[L<Paws::GlueDataBrew::Project>]

A list of projects that are defined .


=head2 _request_id => Str


=cut

