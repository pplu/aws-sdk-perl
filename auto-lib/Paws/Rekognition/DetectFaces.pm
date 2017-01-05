
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

Paws::Rekognition::DetectFaces - Arguments for method DetectFaces on Paws::Rekognition

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

A list of facial attributes you would like to be returned. By default,
the API returns subset of facial attributes.

For example, you can specify the value as, ["ALL"] or ["DEFAULT"]. If
you provide both, ["ALL", "DEFAULT"], the service uses a logical AND
operator to determine which attributes to return (in this case, it is
all attributes). If you specify all attributes, Amazon Rekognition
performs additional detection.



=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>

The image in which you want to detect faces. You can specify a blob or
an S3 object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectFaces in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

