
package Paws::GlueDataBrew::CreateRecipeJobResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::CreateRecipeJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the job that you created.


=head2 _request_id => Str


=cut

