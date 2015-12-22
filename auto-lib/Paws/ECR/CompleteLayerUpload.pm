
package Paws::ECR::CompleteLayerUpload;
  use Moose;
  has LayerDigests => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'layerDigests' , required => 1);
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has UploadId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteLayerUpload');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::CompleteLayerUploadResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::CompleteLayerUpload - Arguments for method CompleteLayerUpload on Paws::ECR

=head1 DESCRIPTION

This class represents the parameters used for calling the method CompleteLayerUpload on the 
Amazon EC2 Container Registry service. Use the attributes of this class
as arguments to method CompleteLayerUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CompleteLayerUpload.

As an example:

  $service_obj->CompleteLayerUpload(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LayerDigests => ArrayRef[Str]

  The C<sha256> digest of the image layer.


=head2 RegistryId => Str

  The AWS account ID associated with the registry to which to upload
layers. If you do not specify a registry, the default registry is
assumed.


=head2 B<REQUIRED> RepositoryName => Str

  The name of the repository to associate with the image layer.


=head2 B<REQUIRED> UploadId => Str

  The upload ID from a previous InitiateLayerUpload operation to
associate with the image layer.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CompleteLayerUpload in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

