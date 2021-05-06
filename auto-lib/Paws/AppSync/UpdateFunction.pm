
package Paws::AppSync::UpdateFunction;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has DataSourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceName', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FunctionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'functionId', required => 1);
  has FunctionVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'functionVersion', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RequestMappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestMappingTemplate', required => 1);
  has ResponseMappingTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'responseMappingTemplate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/functions/{functionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::UpdateFunctionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateFunction - Arguments for method UpdateFunction on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFunction on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method UpdateFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFunction.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $UpdateFunctionResponse = $appsync->UpdateFunction(
      ApiId                   => 'MyString',
      DataSourceName          => 'MyResourceName',
      FunctionId              => 'MyResourceName',
      FunctionVersion         => 'MyString',
      Name                    => 'MyResourceName',
      RequestMappingTemplate  => 'MyMappingTemplate',
      Description             => 'MyString',             # OPTIONAL
      ResponseMappingTemplate => 'MyMappingTemplate',    # OPTIONAL
    );

    # Results:
    my $FunctionConfiguration = $UpdateFunctionResponse->FunctionConfiguration;

    # Returns a L<Paws::AppSync::UpdateFunctionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/UpdateFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The GraphQL API ID.



=head2 B<REQUIRED> DataSourceName => Str

The C<Function> C<DataSource> name.



=head2 Description => Str

The C<Function> description.



=head2 B<REQUIRED> FunctionId => Str

The function ID.



=head2 B<REQUIRED> FunctionVersion => Str

The C<version> of the request mapping template. Currently the supported
value is 2018-05-29.



=head2 B<REQUIRED> Name => Str

The C<Function> name.



=head2 B<REQUIRED> RequestMappingTemplate => Str

The C<Function> request mapping template. Functions support only the
2018-05-29 version of the request mapping template.



=head2 ResponseMappingTemplate => Str

The C<Function> request mapping template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFunction in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

