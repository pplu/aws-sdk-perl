
package Paws::Quicksight::CreateAccountCustomizationResponse;
  use Moose;
  has AccountCustomization => (is => 'ro', isa => 'Paws::Quicksight::AccountCustomization');
  has Arn => (is => 'ro', isa => 'Str');
  has AwsAccountId => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateAccountCustomizationResponse

=head1 ATTRIBUTES


=head2 AccountCustomization => L<Paws::Quicksight::AccountCustomization>

The QuickSight customizations you're adding in the current AWS Region.


=head2 Arn => Str

The Amazon Resource Name (ARN) for the customization that you created
for this AWS account.


=head2 AwsAccountId => Str

The ID for the AWS account that you want to customize QuickSight for.


=head2 Namespace => Str

The namespace associated with the customization you're creating.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

