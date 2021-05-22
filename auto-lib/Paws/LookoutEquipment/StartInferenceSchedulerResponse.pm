
package Paws::LookoutEquipment::StartInferenceSchedulerResponse;
  use Moose;
  has InferenceSchedulerArn => (is => 'ro', isa => 'Str');
  has InferenceSchedulerName => (is => 'ro', isa => 'Str');
  has ModelArn => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::StartInferenceSchedulerResponse

=head1 ATTRIBUTES


=head2 InferenceSchedulerArn => Str

The Amazon Resource Name (ARN) of the inference scheduler being
started.


=head2 InferenceSchedulerName => Str

The name of the inference scheduler being started.


=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the ML model being used by the
inference scheduler.


=head2 ModelName => Str

The name of the ML model being used by the inference scheduler.


=head2 Status => Str

Indicates the status of the inference scheduler.

Valid values are: C<"PENDING">, C<"RUNNING">, C<"STOPPING">, C<"STOPPED">
=head2 _request_id => Str


=cut

1;