
package Paws::FraudDetector::GetModelVersionResult;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has ExternalEventsDetail => (is => 'ro', isa => 'Paws::FraudDetector::ExternalEventsDetail', traits => ['NameInRequest'], request_name => 'externalEventsDetail' );
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId' );
  has ModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelType' );
  has ModelVersionNumber => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelVersionNumber' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has TrainingDataSchema => (is => 'ro', isa => 'Paws::FraudDetector::TrainingDataSchema', traits => ['NameInRequest'], request_name => 'trainingDataSchema' );
  has TrainingDataSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingDataSource' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetModelVersionResult

=head1 ATTRIBUTES


=head2 Arn => Str

The model version ARN.


=head2 ExternalEventsDetail => L<Paws::FraudDetector::ExternalEventsDetail>

The event details.


=head2 ModelId => Str

The model ID.


=head2 ModelType => Str

The model type.

Valid values are: C<"ONLINE_FRAUD_INSIGHTS">
=head2 ModelVersionNumber => Str

The model version number.


=head2 Status => Str

The model version status.

Possible values are:

=over

=item *

C<TRAINING_IN_PROGRESS>

=item *

C<TRAINING_COMPLETE>

=item *

C<ACTIVATE_REQUESTED>

=item *

C<ACTIVATE_IN_PROGRESS>

=item *

C<ACTIVE>

=item *

C<INACTIVATE_REQUESTED>

=item *

C<INACTIVATE_IN_PROGRESS>

=item *

C<INACTIVE>

=item *

C<ERROR>

=back



=head2 TrainingDataSchema => L<Paws::FraudDetector::TrainingDataSchema>

The training data schema.


=head2 TrainingDataSource => Str

The training data source.

Valid values are: C<"EXTERNAL_EVENTS">
=head2 _request_id => Str


=cut

1;