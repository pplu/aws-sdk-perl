
package Paws::FraudDetector::GetModelVersionResult;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has ModelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelId' );
  has ModelType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelType' );
  has ModelVersionNumber => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelVersionNumber' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetModelVersionResult

=head1 ATTRIBUTES


=head2 Description => Str

The model version description.


=head2 ModelId => Str

The model ID.


=head2 ModelType => Str

The model type.

Valid values are: C<"ONLINE_FRAUD_INSIGHTS">
=head2 ModelVersionNumber => Str

The model version.


=head2 Status => Str

The model version status.


=head2 _request_id => Str


=cut

1;