
package Paws::GlueDataBrew::UpdateProjectResponse;
  use Moose;
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::UpdateProjectResponse

=head1 ATTRIBUTES


=head2 LastModifiedDate => Str

The date and time that the project was last modified.


=head2 B<REQUIRED> Name => Str

The name of the project that you updated.


=head2 _request_id => Str


=cut

