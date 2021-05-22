
package Paws::Quicksight::CreateAccountCustomization;
  use Moose;
  has AccountCustomization => (is => 'ro', isa => 'Paws::Quicksight::AccountCustomization', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccountCustomization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/customizations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::CreateAccountCustomizationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateAccountCustomization - Arguments for method CreateAccountCustomization on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccountCustomization on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method CreateAccountCustomization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccountCustomization.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $CreateAccountCustomizationResponse =
      $quicksight->CreateAccountCustomization(
      AccountCustomization => {
        DefaultTheme => 'MyArn',    # OPTIONAL
      },
      AwsAccountId => 'MyAwsAccountId',
      Namespace    => 'MyNamespace',      # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',            # min: 1, max: 128
          Value => 'MyTagValue',          # min: 1, max: 256

        },
        ...
      ],                                  # OPTIONAL
      );

    # Results:
    my $AccountCustomization =
      $CreateAccountCustomizationResponse->AccountCustomization;
    my $Arn          = $CreateAccountCustomizationResponse->Arn;
    my $AwsAccountId = $CreateAccountCustomizationResponse->AwsAccountId;
    my $Namespace    = $CreateAccountCustomizationResponse->Namespace;
    my $RequestId    = $CreateAccountCustomizationResponse->RequestId;
    my $Status       = $CreateAccountCustomizationResponse->Status;

    # Returns a L<Paws::Quicksight::CreateAccountCustomizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/CreateAccountCustomization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountCustomization => L<Paws::Quicksight::AccountCustomization>

The QuickSight customizations you're adding in the current AWS Region.
You can add these to an AWS account and a QuickSight namespace.

For example, you can add a default theme by setting
C<AccountCustomization> to the midnight theme:
C<"AccountCustomization": { "DefaultTheme":
"arn:aws:quicksight::aws:theme/MIDNIGHT" }>. Or, you can add a custom
theme by specifying C<"AccountCustomization": { "DefaultTheme":
"arn:aws:quicksight:us-west-2:111122223333:theme/bdb844d0-0fe9-4d9d-b520-0fe602d93639"
}>.



=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that you want to customize QuickSight for.



=head2 Namespace => Str

The QuickSight namespace that you want to add customizations to.



=head2 Tags => ArrayRef[L<Paws::Quicksight::Tag>]

A list of the tags that you want to attach to this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccountCustomization in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

