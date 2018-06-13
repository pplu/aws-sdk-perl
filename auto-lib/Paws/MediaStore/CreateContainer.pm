
package Paws::MediaStore::CreateContainer;
  use Moose;
  has ContainerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContainer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaStore::CreateContainerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::CreateContainer - Arguments for method CreateContainer on L<Paws::MediaStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContainer on the
L<AWS Elemental MediaStore|Paws::MediaStore> service. Use the attributes of this class
as arguments to method CreateContainer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContainer.

=head1 SYNOPSIS

    my $mediastore = Paws->service('MediaStore');
    my $CreateContainerOutput = $mediastore->CreateContainer(
      ContainerName => 'MyContainerName',

    );

    # Results:
    my $Container = $CreateContainerOutput->Container;

    # Returns a L<Paws::MediaStore::CreateContainerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediastore/CreateContainer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerName => Str

The name for the container. The name must be from 1 to 255 characters.
Container names must be unique to your AWS account within a specific
region. As an example, you could create a container named C<movies> in
every region, as long as you donE<rsquo>t have an existing container
with that name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContainer in L<Paws::MediaStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

