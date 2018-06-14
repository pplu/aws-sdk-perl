
package Paws::AppSync::UpdateType;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);
  has TypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'typeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/types/{typeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::UpdateTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateType - Arguments for method UpdateType on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateType on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method UpdateType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateType.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $UpdateTypeResponse = $appsync->UpdateType(
      ApiId      => 'MyString',
      Format     => 'SDL',
      TypeName   => 'MyResourceName',
      Definition => 'MyString',         # OPTIONAL
    );

    # Results:
    my $Type = $UpdateTypeResponse->Type;

    # Returns a L<Paws::AppSync::UpdateTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/UpdateType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 Definition => Str

The new definition.



=head2 B<REQUIRED> Format => Str

The new type format: SDL or JSON.

Valid values are: C<"SDL">, C<"JSON">

=head2 B<REQUIRED> TypeName => Str

The new type name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateType in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

