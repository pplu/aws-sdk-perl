
package Paws::GlueDataBrew::CreateDatasetResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::CreateDatasetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the dataset that you created.


=head2 _request_id => Str


=cut

