
package Paws::LookoutVision::DeleteModelResponse;
  use Moose;
  has ModelArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::DeleteModelResponse

=head1 ATTRIBUTES


=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the model that was deleted.


=head2 _request_id => Str


=cut

