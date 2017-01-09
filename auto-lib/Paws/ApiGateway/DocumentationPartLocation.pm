package Paws::ApiGateway::DocumentationPartLocation;
  use Moose;
  has Method => (is => 'ro', isa => 'Str', xmlname => 'method', request_name => 'method', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has Path => (is => 'ro', isa => 'Str', xmlname => 'path', request_name => 'path', traits => ['Unwrapped','NameInRequest']);
  has StatusCode => (is => 'ro', isa => 'Str', xmlname => 'statusCode', request_name => 'statusCode', traits => ['Unwrapped','NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', xmlname => 'type', request_name => 'type', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DocumentationPartLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::DocumentationPartLocation object:

  $service_obj->Method(Att1 => { Method => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::DocumentationPartLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->Method

=head1 DESCRIPTION

Specifies the target API entity to which the documentation applies.

=head1 ATTRIBUTES


=head2 Method => Str

  The HTTP verb of a method. It is a valid field for the API entity types
of C<METHOD>, C<PATH_PARAMETER>, C<QUERY_PARAMETER>, C<REQUEST_HEADER>,
C<REQUEST_BODY>, C<RESPONSE>, C<RESPONSE_HEADER>, and C<RESPONSE_BODY>.
The default value is C<*> for any method. When an applicable child
entity inherits the content of an entity of the same type with more
general specifications of the other C<location> attributes, the child
entity's C<method> attribute must match that of the parent entity
exactly.


=head2 Name => Str

  The name of the targeted API entity. It is a valid and required field
for the API entity types of C<AUTHORIZER>, C<MODEL>, C<PATH_PARAMETER>,
C<QUERY_PARAMETER>, C<REQUEST_HEADER>, C<REQUEST_BODY> and
C<RESPONSE_HEADER>. It is an invalid field for any other entity type.


=head2 Path => Str

  The URL path of the target. It is a valid field for the API entity
types of C<RESOURCE>, C<METHOD>, C<PATH_PARAMETER>, C<QUERY_PARAMETER>,
C<REQUEST_HEADER>, C<REQUEST_BODY>, C<RESPONSE>, C<RESPONSE_HEADER>,
and C<RESPONSE_BODY>. The default value is C</> for the root resource.
When an applicable child entity inherits the content of another entity
of the same type with more general specifications of the other
C<location> attributes, the child entity's C<path> attribute must match
that of the parent entity as a prefix.


=head2 StatusCode => Str

  The HTTP status code of a response. It is a valid field for the API
entity types of C<RESPONSE>, C<RESPONSE_HEADER>, and C<RESPONSE_BODY>.
The default value is C<*> for any status code. When an applicable child
entity inherits the content of an entity of the same type with more
general specifications of the other C<location> attributes, the child
entity's C<statusCode> attribute must match that of the parent entity
exactly.


=head2 B<REQUIRED> Type => Str

  The type of API entity to which the documentation content applies. It
is a valid and required field for API entity types of C<API>,
C<AUTHORIZER>, C<MODEL>, C<RESOURCE>, C<METHOD>, C<PATH_PARAMETER>,
C<QUERY_PARAMETER>, C<REQUEST_HEADER>, C<REQUEST_BODY>, C<RESPONSE>,
C<RESPONSE_HEADER>, and C<RESPONSE_BODY>. Content inheritance does not
apply to any entity of the C<API>, C<AUTHROZER>, C<MODEL>, or
C<RESOURCE> type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

