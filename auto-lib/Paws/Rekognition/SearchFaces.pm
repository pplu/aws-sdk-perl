
package Paws::Rekognition::SearchFaces;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', required => 1);
  has FaceId => (is => 'ro', isa => 'Str', required => 1);
  has FaceMatchThreshold => (is => 'ro', isa => 'Num');
  has MaxFaces => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchFaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::SearchFacesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::SearchFaces - Arguments for method SearchFaces on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchFaces on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method SearchFaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchFaces.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    # To delete a face
    # This operation searches for matching faces in the collection the supplied
    # face belongs to.
    my $SearchFacesResponse = $rekognition->SearchFaces(
      {
        'CollectionId'       => 'myphotos',
        'FaceId'             => '70008e50-75e4-55d0-8e80-363fb73b3a14',
        'FaceMatchThreshold' => 90,
        'MaxFaces'           => 10
      }
    );

    # Results:
    my $FaceMatches    = $SearchFacesResponse->FaceMatches;
    my $SearchedFaceId = $SearchFacesResponse->SearchedFaceId;

    # Returns a L<Paws::Rekognition::SearchFacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/SearchFaces>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

ID of the collection the face belongs to.



=head2 B<REQUIRED> FaceId => Str

ID of a face to find matches for in the collection.



=head2 FaceMatchThreshold => Num

Optional value specifying the minimum confidence in the face match to
return. For example, don't return any matches where confidence in
matches is less than 70%.



=head2 MaxFaces => Int

Maximum number of faces to return. The operation returns the maximum
number of faces with the highest confidence in the match.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchFaces in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

