
package Paws::ECS::DeleteAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attribute]', traits => ['NameInRequest'], request_name => 'attributes' , required => 1);
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DeleteAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteAttributes - Arguments for method DeleteAttributes on Paws::ECS

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAttributes on the 
Amazon EC2 Container Service service. Use the attributes of this class
as arguments to method DeleteAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAttributes.

As an example:

  $service_obj->DeleteAttributes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::ECS::Attribute>]

The attributes to delete from your resource. You can specify up to 10
attributes per request. For custom attributes, specify the attribute
name and target ID, but do not specify the value. If you specify the
target ID using the short form, you must also specify the target type.



=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
contains the resource to delete attributes. If you do not specify a
cluster, the default cluster is assumed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAttributes in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

