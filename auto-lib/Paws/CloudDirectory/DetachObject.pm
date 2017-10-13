
package Paws::CloudDirectory::DetachObject;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has LinkName => (is => 'ro', isa => 'Str', required => 1);
  has ParentReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/object/detach');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::DetachObjectResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DetachObject - Arguments for method DetachObject on Paws::CloudDirectory

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachObject on the 
Amazon CloudDirectory service. Use the attributes of this class
as arguments to method DetachObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachObject.

As an example:

  $service_obj->DetachObject(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory
where objects reside. For more information, see arns.



=head2 B<REQUIRED> LinkName => Str

The link name associated with the object that needs to be detached.



=head2 B<REQUIRED> ParentReference => L<Paws::CloudDirectory::ObjectReference>

The parent reference from which the object with the specified link name
is detached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachObject in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

