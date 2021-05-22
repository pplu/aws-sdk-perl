
package Paws::LookoutEquipment::CreateModelResponse;
  use Moose;
  has ModelArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateModelResponse

=head1 ATTRIBUTES


=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the model being created.


=head2 Status => Str

Indicates the status of the C<CreateModel> operation.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">
=head2 _request_id => Str


=cut

1;