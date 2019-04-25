package Paws::ApiGateway::PatchOperation;
  use Moose;
  has From => (is => 'ro', isa => 'Str', request_name => 'from', traits => ['NameInRequest']);
  has Op => (is => 'ro', isa => 'Str', request_name => 'op', traits => ['NameInRequest']);
  has Path => (is => 'ro', isa => 'Str', request_name => 'path', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PatchOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::PatchOperation object:

  $service_obj->Method(Att1 => { From => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::PatchOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->From

=head1 DESCRIPTION

A single patch operation to apply to the specified resource. Please
refer to http://tools.ietf.org/html/rfc6902#section-4 for an
explanation of how each operation is used.

=head1 ATTRIBUTES


=head2 From => Str

  The C<copy> update operation's source as identified by a
C<JSON-Pointer> value referencing the location within the targeted
resource to copy the value from. For example, to promote a canary
deployment, you copy the canary deployment ID to the affiliated
deployment ID by calling a PATCH request on a Stage resource with
C<"op":"copy">, C<"from":"/canarySettings/deploymentId"> and
C<"path":"/deploymentId">.


=head2 Op => Str

  An update operation to be performed with this PATCH request. The valid
value can be C<add>, C<remove>, C<replace> or C<copy>. Not all valid
operations are supported for a given resource. Support of the
operations depends on specific operational contexts. Attempts to apply
an unsupported operation on a resource will return an error message.


=head2 Path => Str

  The C<op> operation's target, as identified by a JSON Pointer
(https://tools.ietf.org/html/draft-ietf-appsawg-json-pointer-08) value
that references a location within the targeted resource. For example,
if the target resource has an updateable property of
C<{"name":"value"}>, the path for this property is C</name>. If the
C<name> property value is a JSON object (e.g., C<{"name":
{"child/name": "child-value"}}>), the path for the C<child/name>
property will be C</name/child~1name>. Any slash ("/") character
appearing in path names must be escaped with "~1", as shown in the
example above. Each C<op> operation can have only one C<path>
associated with it.


=head2 Value => Str

  The new target value of the update operation. It is applicable for the
C<add> or C<replace> operation. When using AWS CLI to update a property
of a JSON value, enclose the JSON object with a pair of single quotes
in a Linux shell, e.g., '{"a": ...}'. In a Windows shell, see Using
JSON for Parameters
(https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

