
package Paws::ApiGateway::UsagePlan;
  use Moose;
  has ApiStages => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::ApiStage]', traits => ['Unwrapped'], xmlname => 'apiStages');
  has Description => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'name');
  has ProductCode => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'productCode');
  has Quota => (is => 'ro', isa => 'Paws::ApiGateway::QuotaSettings', traits => ['Unwrapped'], xmlname => 'quota');
  has Throttle => (is => 'ro', isa => 'Paws::ApiGateway::ThrottleSettings', traits => ['Unwrapped'], xmlname => 'throttle');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UsagePlan

=head1 ATTRIBUTES


=head2 ApiStages => ArrayRef[L<Paws::ApiGateway::ApiStage>]

The associated API stages of a usage plan.


=head2 Description => Str

The description of a usage plan.


=head2 Id => Str

The identifier of a UsagePlan resource.


=head2 Name => Str

The name of a usage plan.


=head2 ProductCode => Str

The AWS Markeplace product identifier to associate with the usage plan
as a SaaS product on AWS Marketplace.


=head2 Quota => L<Paws::ApiGateway::QuotaSettings>

The maximum number of permitted requests per a given unit time
interval.


=head2 Throttle => L<Paws::ApiGateway::ThrottleSettings>

The request throttle limits of a usage plan.


=head2 _request_id => Str


=cut

