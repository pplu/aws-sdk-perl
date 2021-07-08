
package Paws::EMRContainers::CreateVirtualCluster;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has ContainerProvider => (is => 'ro', isa => 'Paws::EMRContainers::ContainerProvider', traits => ['NameInRequest'], request_name => 'containerProvider', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EMRContainers::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVirtualCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/virtualclusters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::CreateVirtualClusterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::CreateVirtualCluster - Arguments for method CreateVirtualCluster on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVirtualCluster on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method CreateVirtualCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVirtualCluster.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $CreateVirtualClusterResponse = $emr -containers->CreateVirtualCluster(
      ClientToken       => 'MyClientToken',
      ContainerProvider => {
        Id   => 'MyString256',    # min: 1, max: 256
        Type => 'EKS',            # values: EKS
        Info => {
          EksInfo => {
            Namespace => 'MyString256',    # min: 1, max: 256
          },    # OPTIONAL
        },    # OPTIONAL
      },
      Name => 'MyResourceNameString',
      Tags => {
        'MyString128' =>
          'MyStringEmpty256',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn  = $CreateVirtualClusterResponse->Arn;
    my $Id   = $CreateVirtualClusterResponse->Id;
    my $Name = $CreateVirtualClusterResponse->Name;

    # Returns a L<Paws::EMRContainers::CreateVirtualClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/CreateVirtualCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The client token of the virtual cluster.



=head2 B<REQUIRED> ContainerProvider => L<Paws::EMRContainers::ContainerProvider>

The container provider of the virtual cluster.



=head2 B<REQUIRED> Name => Str

The specified name of the virtual cluster.



=head2 Tags => L<Paws::EMRContainers::TagMap>

The tags assigned to the virtual cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVirtualCluster in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

