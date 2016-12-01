
package Paws::Rekognition::IndexFaces;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', required => 1);
  has DetectionAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ExternalImageId => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'IndexFaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::IndexFacesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::IndexFaces - Arguments for method IndexFaces on Paws::Rekognition

=head1 DESCRIPTION

This class represents the parameters used for calling the method IndexFaces on the 
Amazon Rekognition service. Use the attributes of this class
as arguments to method IndexFaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to IndexFaces.

As an example:

  $service_obj->IndexFaces(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

ID of an existing collection to which you want to add the faces that
are detected in the input images.



=head2 DetectionAttributes => ArrayRef[Str|Undef]

(Optional) Returns detailed attributes of indexed faces. By default,
the operation returns a subset of the facial attributes.

For example, you can specify the value as, ["ALL"] or ["DEFAULT"]. If
you provide both, ["ALL", "DEFAULT"], Rekognition uses the logical AND
operator to determine which attributes to return (in this case, it is
all attributes). If you specify all attributes, the service performs
additional detection, in addition to the default.



=head2 ExternalImageId => Str

ID you want to assign to all the faces detected in the image.



=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method IndexFaces in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

