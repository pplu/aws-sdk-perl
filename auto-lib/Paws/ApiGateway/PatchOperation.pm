package Paws::ApiGateway::PatchOperation;
  use Moose;
  has From => (is => 'ro', isa => 'Str', xmlname => 'from', request_name => 'from', traits => ['Unwrapped','NameInRequest']);
  has Op => (is => 'ro', isa => 'Str', xmlname => 'op', request_name => 'op', traits => ['Unwrapped','NameInRequest']);
  has Path => (is => 'ro', isa => 'Str', xmlname => 'path', request_name => 'path', traits => ['Unwrapped','NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', xmlname => 'value', request_name => 'value', traits => ['Unwrapped','NameInRequest']);
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
refer to http://tools.ietf.org/html/rfc6902
explanation of how each operation is used.

=head1 ATTRIBUTES


=head2 From => Str

  The "move" and "copy" operation object MUST contain a "from" member,
which is a string containing a C<JSON Pointer> value that references
the location in the target document to move the value from.


=head2 Op => Str

  A patch operation whose value indicates the operation to perform. Its
value MUST be one of "add", "remove", "replace", "move", "copy", or
"test"; other values are errors.


=head2 Path => Str

  Operation objects MUST have exactly one "path" member. That member's
value is a string containing a `JSON-Pointer` value that references a
location within the target document (the "target location") where the
operation is performed.


=head2 Value => Str

  The actual value content.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

