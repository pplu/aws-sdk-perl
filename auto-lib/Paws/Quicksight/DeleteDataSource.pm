
package Paws::Quicksight::DeleteDataSource;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSourceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/data-sources/{DataSourceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DeleteDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteDataSource - Arguments for method DeleteDataSource on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataSource on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DeleteDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataSource.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DeleteDataSourceResponse = $quicksight->DeleteDataSource(
      AwsAccountId => 'MyAwsAccountId',
      DataSourceId => 'MyResourceId',

    );

    # Results:
    my $Arn          = $DeleteDataSourceResponse->Arn;
    my $DataSourceId = $DeleteDataSourceResponse->DataSourceId;
    my $RequestId    = $DeleteDataSourceResponse->RequestId;
    my $Status       = $DeleteDataSourceResponse->Status;

    # Returns a L<Paws::Quicksight::DeleteDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DeleteDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS account ID.



=head2 B<REQUIRED> DataSourceId => Str

The ID of the data source. This ID is unique per AWS Region for each
AWS account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataSource in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

