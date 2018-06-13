
package Paws::AppSync::CreateType;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition', required => 1);
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/types');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::CreateTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateType - Arguments for method CreateType on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateType on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateType.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateTypeResponse = $appsync->CreateType(
      ApiId      => 'MyString',
      Definition => 'MyString',
      Format     => 'SDL',

    );

    # Results:
    my $Type = $CreateTypeResponse->Type;

    # Returns a L<Paws::AppSync::CreateTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 B<REQUIRED> Definition => Str

The type definition, in GraphQL Schema Definition Language (SDL)
format.

For more information, see the GraphQL SDL documentation
(http://graphql.org/learn/schema/).



=head2 B<REQUIRED> Format => Str

The type format: SDL or JSON.

Valid values are: C<"SDL">, C<"JSON">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateType in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

