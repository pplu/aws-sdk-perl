
package Paws::AppSync::ListResolvers;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'typeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResolvers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/types/{typeName}/resolvers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::ListResolversResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListResolvers - Arguments for method ListResolvers on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResolvers on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method ListResolvers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResolvers.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $ListResolversResponse = $appsync->ListResolvers(
      ApiId      => 'MyString',
      TypeName   => 'MyString',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListResolversResponse->NextToken;
    my $Resolvers = $ListResolversResponse->Resolvers;

    # Returns a L<Paws::AppSync::ListResolversResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/ListResolvers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 MaxResults => Int

The maximum number of results you want the request to return.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.



=head2 B<REQUIRED> TypeName => Str

The type name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResolvers in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

