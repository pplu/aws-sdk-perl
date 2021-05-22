
package Paws::Quicksight::DescribeAnalysisPermissions;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AnalysisId', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAnalysisPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/analyses/{AnalysisId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeAnalysisPermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeAnalysisPermissions - Arguments for method DescribeAnalysisPermissions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAnalysisPermissions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeAnalysisPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAnalysisPermissions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeAnalysisPermissionsResponse =
      $quicksight->DescribeAnalysisPermissions(
      AnalysisId   => 'MyRestrictiveResourceId',
      AwsAccountId => 'MyAwsAccountId',

      );

    # Results:
    my $AnalysisArn = $DescribeAnalysisPermissionsResponse->AnalysisArn;
    my $AnalysisId  = $DescribeAnalysisPermissionsResponse->AnalysisId;
    my $Permissions = $DescribeAnalysisPermissionsResponse->Permissions;
    my $RequestId   = $DescribeAnalysisPermissionsResponse->RequestId;
    my $Status      = $DescribeAnalysisPermissionsResponse->Status;

    # Returns a L<Paws::Quicksight::DescribeAnalysisPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeAnalysisPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisId => Str

The ID of the analysis whose permissions you're describing. The ID is
part of the analysis URL.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the analysis whose permissions
you're describing. You must be using the AWS account that the analysis
is in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAnalysisPermissions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

