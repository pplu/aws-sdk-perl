
package Paws::ECS::RegisterContainerInstance;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Attribute]', traits => ['NameInRequest'], request_name => 'attributes' );
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has ContainerInstanceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerInstanceArn' );
  has InstanceIdentityDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceIdentityDocument' );
  has InstanceIdentityDocumentSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceIdentityDocumentSignature' );
  has PlatformDevices => (is => 'ro', isa => 'ArrayRef[Paws::ECS::PlatformDevice]', traits => ['NameInRequest'], request_name => 'platformDevices' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TotalResources => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Resource]', traits => ['NameInRequest'], request_name => 'totalResources' );
  has VersionInfo => (is => 'ro', isa => 'Paws::ECS::VersionInfo', traits => ['NameInRequest'], request_name => 'versionInfo' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterContainerInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::RegisterContainerInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::RegisterContainerInstance - Arguments for method RegisterContainerInstance on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterContainerInstance on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method RegisterContainerInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterContainerInstance.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $RegisterContainerInstanceResponse = $ecs->RegisterContainerInstance(
      Attributes => [
        {
          Name     => 'MyString',
          TargetId => 'MyString',
          TargetType =>
            'container-instance',    # values: container-instance; OPTIONAL
          Value => 'MyString',
        },
        ...
      ],                             # OPTIONAL
      Cluster                           => 'MyString',    # OPTIONAL
      ContainerInstanceArn              => 'MyString',    # OPTIONAL
      InstanceIdentityDocument          => 'MyString',    # OPTIONAL
      InstanceIdentityDocumentSignature => 'MyString',    # OPTIONAL
      PlatformDevices                   => [
        {
          Id   => 'MyString',
          Type => 'GPU',                                  # values: GPU

        },
        ...
      ],                                                  # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
      TotalResources => [
        {
          DoubleValue    => 1,                      # OPTIONAL
          IntegerValue   => 1,                      # OPTIONAL
          LongValue      => 1,                      # OPTIONAL
          Name           => 'MyString',
          StringSetValue => [ 'MyString', ... ],    # OPTIONAL
          Type           => 'MyString',
        },
        ...
      ],                                            # OPTIONAL
      VersionInfo => {
        AgentHash     => 'MyString',
        AgentVersion  => 'MyString',
        DockerVersion => 'MyString',
      },                                            # OPTIONAL
    );

    # Results:
    my $ContainerInstance =
      $RegisterContainerInstanceResponse->ContainerInstance;

    # Returns a L<Paws::ECS::RegisterContainerInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/RegisterContainerInstance>

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::ECS::Attribute>]

The container instance attributes that this container instance
supports.



=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster with
which to register your container instance. If you do not specify a
cluster, the default cluster is assumed.



=head2 ContainerInstanceArn => Str

The ARN of the container instance (if it was previously registered).



=head2 InstanceIdentityDocument => Str

The instance identity document for the EC2 instance to register. This
document can be found by running the following command from the
instance: C<curl
http://169.254.169.254/latest/dynamic/instance-identity/document/>



=head2 InstanceIdentityDocumentSignature => Str

The instance identity document signature for the EC2 instance to
register. This signature can be found by running the following command
from the instance: C<curl
http://169.254.169.254/latest/dynamic/instance-identity/signature/>



=head2 PlatformDevices => ArrayRef[L<Paws::ECS::PlatformDevice>]

The devices that are available on the container instance. The only
supported device type is a GPU.



=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The metadata that you apply to the container instance to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define. Tag keys can have a maximum
character length of 128 characters, and tag values can have a maximum
length of 256 characters.



=head2 TotalResources => ArrayRef[L<Paws::ECS::Resource>]

The resources available on the instance.



=head2 VersionInfo => L<Paws::ECS::VersionInfo>

The version information for the Amazon ECS container agent and Docker
daemon running on the container instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterContainerInstance in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

