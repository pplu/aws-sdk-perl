
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
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DeleteFaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFaces.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    # To delete a face
    # This operation deletes one or more faces from a Rekognition collection.
    my $DeleteFacesResponse = $rekognition->DeleteFaces(
      {
        'CollectionId' => 'myphotos',
        'FaceIds'      => ['ff43d742-0c13-5d16-a3e8-03d3f58e980b']
      }
    );

    # Results:
    my $DeletedFaces = $DeleteFacesResponse->DeletedFaces;

    # Returns a L<Paws::Rekognition::DeleteFacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DeleteFaces>

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

