
package Paws::Rekognition::ListFaces;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::ListFacesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListFaces - Arguments for method ListFaces on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFaces on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method ListFaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFaces.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    # To list the faces in a collection
    # This operation lists the faces in a Rekognition collection.
    my $ListFacesResponse = $rekognition->ListFaces(
      {
        'CollectionId' => 'myphotos',
        'MaxResults'   => 20
      }
    );

    # Results:
    my $Faces = $ListFacesResponse->Faces;

    # Returns a L<Paws::Rekognition::ListFacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/ListFaces>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

ID of the collection from which to list the faces.



=head2 MaxResults => Int

Maximum number of faces to return.



=head2 NextToken => Str

If the previous response was incomplete (because there is more data to
retrieve), Amazon Rekognition returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
faces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFaces in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

