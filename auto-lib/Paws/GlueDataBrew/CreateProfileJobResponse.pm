
package Paws::GlueDataBrew::CreateProfileJobResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::CreateProfileJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the job that was created.


=head2 _request_id => Str


=cut

