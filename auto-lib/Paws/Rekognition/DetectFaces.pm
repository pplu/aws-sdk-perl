
package Paws::Rekognition::DetectFaces;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Image => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectFaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DetectFacesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectFaces - Arguments for method DetectFaces on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectFaces on the 
Amazon Rekognition service. Use the attributes of this class
as arguments to method DetectFaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectFaces.

As an example:

  $service_obj->DetectFaces(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[Str|Undef]

An array of facial attributes you want to be returned. This can be the
default list of attributes or all attributes. If you don't specify a
value for C<Attributes> or if you specify C<["DEFAULT"]>, the API
returns the following subset of facial attributes: C<BoundingBox>,
C<Confidence>, C<Pose>, C<Quality> and C<Landmarks>. If you provide
C<["ALL"]>, all facial attributes are returned but the operation will
take longer to complete.

If you provide both, C<["ALL", "DEFAULT"]>, the service uses a logical
AND operator to determine which attributes to return (in this case, all
attributes).



=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>

The image in which you want to detect faces. You can specify a blob or
an S3 object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectFaces in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

