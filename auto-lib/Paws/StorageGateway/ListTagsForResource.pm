
package Paws::StorageGateway::ListTagsForResource;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::ListTagsForResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To list tags that have been added to a resource
    # Lists the tags that have been added to the specified resource.
    my $ListTagsForResourceOutput = $storagegateway->ListTagsForResource(
      {
        'Limit'  => 1,
        'Marker' => 1,
        'ResourceARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B'
      }
    );

    # Results:
    my $Marker      = $ListTagsForResourceOutput->Marker;
    my $ResourceARN = $ListTagsForResourceOutput->ResourceARN;
    my $Tags        = $ListTagsForResourceOutput->Tags;

    # Returns a L<Paws::StorageGateway::ListTagsForResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/ListTagsForResource>

=head1 ATTRIBUTES


=head2 Limit => Int

Specifies that the list of tags returned be limited to the specified
number of items.



=head2 Marker => Str

An opaque string that indicates the position at which to begin
returning the list of tags.



=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN) of the resource for which you want to
list tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

