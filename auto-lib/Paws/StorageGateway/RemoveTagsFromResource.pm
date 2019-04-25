
package Paws::StorageGateway::RemoveTagsFromResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::RemoveTagsFromResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::RemoveTagsFromResource - Arguments for method RemoveTagsFromResource on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTagsFromResource on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method RemoveTagsFromResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTagsFromResource.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To remove tags from a resource
    # Lists the iSCSI stored volumes of a gateway. Removes one or more tags from
    # the specified resource.
    my $RemoveTagsFromResourceOutput = $storagegateway->RemoveTagsFromResource(
      {
        'ResourceARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-11A2222B',
        'TagKeys' => [ 'Dev Gatgeway Region', 'East Coast' ]
      }
    );

    # Results:
    my $ResourceARN = $RemoveTagsFromResourceOutput->ResourceARN;

    # Returns a L<Paws::StorageGateway::RemoveTagsFromResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/RemoveTagsFromResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

The Amazon Resource Name (ARN) of the resource you want to remove the
tags from.



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

The keys of the tags you want to remove from the specified resource. A
tag is composed of a key/value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTagsFromResource in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

