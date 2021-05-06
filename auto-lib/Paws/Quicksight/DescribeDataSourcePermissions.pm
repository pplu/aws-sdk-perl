
package Paws::Quicksight::DescribeDataSourcePermissions;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSourceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataSourcePermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeDataSourcePermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeDataSourcePermissions - Arguments for method DescribeDataSourcePermissions on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataSourcePermissions on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeDataSourcePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataSourcePermissions.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeDataSourcePermissionsResponse =
      $quicksight->DescribeDataSourcePermissions(
      AwsAccountId => 'MyAwsAccountId',
      DataSourceId => 'MyResourceId',

      );

    # Results:
    my $DataSourceArn = $DescribeDataSourcePermissionsResponse->DataSourceArn;
    my $DataSourceId  = $DescribeDataSourcePermissionsResponse->DataSourceId;
    my $Permissions   = $DescribeDataSourcePermissionsResponse->Permissions;
    my $RequestId     = $DescribeDataSourcePermissionsResponse->RequestId;
    my $Status        = $DescribeDataSourcePermissionsResponse->Status;

  # Returns a L<Paws::Quicksight::DescribeDataSourcePermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeDataSourcePermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS account ID.



=head2 B<REQUIRED> DataSourceId => Str

The ID of the data source. This ID is unique per AWS Region for each
AWS account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataSourcePermissions in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

