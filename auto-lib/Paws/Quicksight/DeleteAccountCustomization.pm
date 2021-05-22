
package Paws::Quicksight::DeleteAccountCustomization;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountCustomization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/customizations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DeleteAccountCustomizationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteAccountCustomization - Arguments for method DeleteAccountCustomization on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAccountCustomization on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DeleteAccountCustomization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAccountCustomization.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DeleteAccountCustomizationResponse =
      $quicksight->DeleteAccountCustomization(
      AwsAccountId => 'MyAwsAccountId',
      Namespace    => 'MyNamespace',      # OPTIONAL
      );

    # Results:
    my $RequestId = $DeleteAccountCustomizationResponse->RequestId;
    my $Status    = $DeleteAccountCustomizationResponse->Status;

    # Returns a L<Paws::Quicksight::DeleteAccountCustomizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DeleteAccountCustomization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that you want to delete QuickSight
customizations from in this AWS Region.



=head2 Namespace => Str

The QuickSight namespace that you're deleting the customizations from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAccountCustomization in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

