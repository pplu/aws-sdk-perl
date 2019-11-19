
package Paws::AppSync::DeleteDataSource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw//;
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteDataSource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apis/{apiId}/datasources/{name}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppSync::DeleteDataSourceResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'Name' => 'name',
                    'ApiId' => 'apiId'
                  },
  'types' => {
               'ApiId' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Name' => 1,
                    'ApiId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::DeleteDataSource - Arguments for method DeleteDataSource on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataSource on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method DeleteDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataSource.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $DeleteDataSourceResponse = $appsync->DeleteDataSource(
      ApiId => 'MyString',
      Name  => 'MyResourceName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/DeleteDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 B<REQUIRED> Name => Str

The name of the data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataSource in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

