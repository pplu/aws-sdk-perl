
package Paws::LookoutEquipment::CreateInferenceSchedulerResponse;
  use Moose;
  has InferenceSchedulerArn => (is => 'ro', isa => 'Str');
  has InferenceSchedulerName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateInferenceSchedulerResponse

=head1 ATTRIBUTES


=head2 InferenceSchedulerArn => Str

The Amazon Resource Name (ARN) of the inference scheduler being
created.


=head2 InferenceSchedulerName => Str

The name of inference scheduler being created.


=head2 Status => Str

Indicates the status of the C<CreateInferenceScheduler> operation.

Valid values are: C<"PENDING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;