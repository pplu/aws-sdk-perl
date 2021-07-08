
package Paws::Quicksight::UpdateAccountCustomization;
  use Moose;
  has AccountCustomization => (is => 'ro', isa => 'Paws::Quicksight::AccountCustomization', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountCustomization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/customizations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateAccountCustomizationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateAccountCustomization - Arguments for method UpdateAccountCustomization on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountCustomization on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateAccountCustomization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountCustomization.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateAccountCustomizationResponse =
      $quicksight->UpdateAccountCustomization(
      AccountCustomization => {
        DefaultTheme => 'MyArn',    # OPTIONAL
      },
      AwsAccountId => 'MyAwsAccountId',
      Namespace    => 'MyNamespace',      # OPTIONAL
      );

    # Results:
    my $AccountCustomization =
      $UpdateAccountCustomizationResponse->AccountCustomization;
    my $Arn          = $UpdateAccountCustomizationResponse->Arn;
    my $AwsAccountId = $UpdateAccountCustomizationResponse->AwsAccountId;
    my $Namespace    = $UpdateAccountCustomizationResponse->Namespace;
    my $RequestId    = $UpdateAccountCustomizationResponse->RequestId;
    my $Status       = $UpdateAccountCustomizationResponse->Status;

    # Returns a L<Paws::Quicksight::UpdateAccountCustomizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateAccountCustomization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountCustomization => L<Paws::Quicksight::AccountCustomization>

The QuickSight customizations you're updating in the current AWS
Region.



=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that you want to update QuickSight
customizations for.



=head2 Namespace => Str

The namespace that you want to update QuickSight customizations for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountCustomization in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

