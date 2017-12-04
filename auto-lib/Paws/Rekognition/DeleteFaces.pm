
package Paws::Rekognition::DeleteFaces;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', required => 1);
  has FaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DeleteFacesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DeleteFaces - Arguments for method DeleteFaces on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFaces on the 
Amazon Rekognition service. Use the attributes of this class
as arguments to method DeleteFaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFaces.

As an example:

  $service_obj->DeleteFaces(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

Collection from which to remove the specific faces.



=head2 B<REQUIRED> FaceIds => ArrayRef[Str|Undef]

An array of face IDs to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFaces in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

