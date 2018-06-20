
package Paws::Rekognition::CreateCollection;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCollection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::CreateCollectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::CreateCollection - Arguments for method CreateCollection on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCollection on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method CreateCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCollection.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    # To create a collection
    # This operation creates a Rekognition collection for storing image data.
    my $CreateCollectionResponse = $rekognition->CreateCollection(
      {
        'CollectionId' => 'myphotos'
      }
    );

    # Results:
    my $CollectionArn = $CreateCollectionResponse->CollectionArn;
    my $StatusCode    = $CreateCollectionResponse->StatusCode;

    # Returns a L<Paws::Rekognition::CreateCollectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/CreateCollection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

ID for the collection that you are creating.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCollection in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

