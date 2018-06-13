
package Paws::AppSync::GetDataSource;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/datasources/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::GetDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetDataSource - Arguments for method GetDataSource on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataSource on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method GetDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataSource.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $GetDataSourceResponse = $appsync->GetDataSource(
      ApiId => 'MyString',
      Name  => 'MyResourceName',

    );

    # Results:
    my $DataSource = $GetDataSourceResponse->DataSource;

    # Returns a L<Paws::AppSync::GetDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/GetDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 B<REQUIRED> Name => Str

The name of the data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataSource in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

