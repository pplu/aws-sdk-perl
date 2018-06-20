
package Paws::StorageGateway::AddTagsToResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::AddTagsToResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::AddTagsToResource - Arguments for method AddTagsToResource on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTagsToResource on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method AddTagsToResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTagsToResource.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To add tags to resource
    # Adds one or more tags to the specified resource.
    my $AddTagsToResourceOutput = $storagegateway->AddTagsToResource(
      {
        'ResourceARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B',
        'Tags' => [

          {
            'Key'   => 'Dev Gatgeway Region',
            'Value' => 'East Coast'
          }
        ]
      }
    );

    # Results:
    my $ResourceARN = $AddTagsToResourceOutput->ResourceARN;

    # Returns a L<Paws::StorageGateway::AddTagsToResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/AddTagsToResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN) of the resource you want to add tags to.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::StorageGateway::Tag>]

The key-value pair that represents the tag you want to add to the
resource. The value can be an empty string.

Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: +
- = . _ : / @.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTagsToResource in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

