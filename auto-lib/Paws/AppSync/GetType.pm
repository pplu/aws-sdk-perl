
package Paws::AppSync::GetType;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has TypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'typeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/types/{typeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::GetTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetType - Arguments for method GetType on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetType on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method GetType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetType.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $GetTypeResponse = $appsync->GetType(
      ApiId    => 'MyString',
      Format   => 'SDL',
      TypeName => 'MyResourceName',

    );

    # Results:
    my $Type = $GetTypeResponse->Type;

    # Returns a L<Paws::AppSync::GetTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/GetType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 B<REQUIRED> Format => Str

The type format: SDL or JSON.

Valid values are: C<"SDL">, C<"JSON">

=head2 B<REQUIRED> TypeName => Str

The type name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetType in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

