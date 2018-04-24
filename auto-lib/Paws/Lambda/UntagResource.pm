
package Paws::Lambda::UntagResource;
  use Moose;
  has Resource => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ARN', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'tagKeys', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-03-31/tags/{ARN}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::UntagResource - Arguments for method UntagResource on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the 
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

As an example:

  $service_obj->UntagResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Resource => Str

The ARN (Amazon Resource Name) of the function. For more information,
see Tagging Lambda Functions
(http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the B<AWS
Lambda Developer Guide>.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The list of tag keys to be deleted from the function. For more
information, see Tagging Lambda Functions
(http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the B<AWS
Lambda Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

