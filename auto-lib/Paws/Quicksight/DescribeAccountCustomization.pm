
package Paws::Quicksight::DescribeAccountCustomization;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has Resolved => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'resolved');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountCustomization');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/customizations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeAccountCustomizationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeAccountCustomization - Arguments for method DescribeAccountCustomization on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountCustomization on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeAccountCustomization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountCustomization.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeAccountCustomizationResponse =
      $quicksight->DescribeAccountCustomization(
      AwsAccountId => 'MyAwsAccountId',
      Namespace    => 'MyNamespace',      # OPTIONAL
      Resolved     => 1,                  # OPTIONAL
      );

    # Results:
    my $AccountCustomization =
      $DescribeAccountCustomizationResponse->AccountCustomization;
    my $Arn          = $DescribeAccountCustomizationResponse->Arn;
    my $AwsAccountId = $DescribeAccountCustomizationResponse->AwsAccountId;
    my $Namespace    = $DescribeAccountCustomizationResponse->Namespace;
    my $RequestId    = $DescribeAccountCustomizationResponse->RequestId;
    my $Status       = $DescribeAccountCustomizationResponse->Status;

   # Returns a L<Paws::Quicksight::DescribeAccountCustomizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeAccountCustomization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that you want to describe QuickSight
customizations for.



=head2 Namespace => Str

The QuickSight namespace that you want to describe QuickSight
customizations for.



=head2 Resolved => Bool

The C<Resolved> flag works with the other parameters to determine which
view of QuickSight customizations is returned. You can add this flag to
your command to use the same view that QuickSight uses to identify
which customizations to apply to the console. Omit this flag, or set it
to C<no-resolved>, to reveal customizations that are configured at
different levels.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountCustomization in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

