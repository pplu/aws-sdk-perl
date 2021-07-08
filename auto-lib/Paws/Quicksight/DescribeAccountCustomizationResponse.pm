
package Paws::Quicksight::DescribeAccountCustomizationResponse;
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

Paws::Quicksight::DescribeAccountCustomizationResponse

=head1 ATTRIBUTES


=head2 AccountCustomization => L<Paws::Quicksight::AccountCustomization>

The QuickSight customizations that exist in the current AWS Region.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the customization that's associated
with this AWS account.


=head2 AwsAccountId => Str

The ID for the AWS account that you're describing.


=head2 Namespace => Str

The QuickSight namespace that you're describing.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

