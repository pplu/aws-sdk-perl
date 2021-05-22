
package Paws::MediaConnect::AddFlowVpcInterfaces;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowArn', required => 1);
  has VpcInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::VpcInterfaceRequest]', traits => ['NameInRequest'], request_name => 'vpcInterfaces', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddFlowVpcInterfaces');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{flowArn}/vpcInterfaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::AddFlowVpcInterfacesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddFlowVpcInterfaces - Arguments for method AddFlowVpcInterfaces on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddFlowVpcInterfaces on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method AddFlowVpcInterfaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddFlowVpcInterfaces.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $AddFlowVpcInterfacesResponse = $mediaconnect->AddFlowVpcInterfaces(
      FlowArn       => 'My__string',
      VpcInterfaces => [
        {
          Name             => 'My__string',
          RoleArn          => 'My__string',
          SecurityGroupIds => [ 'My__string', ... ],
          SubnetId         => 'My__string',
          NetworkInterfaceType => 'ena',    # values: ena, efa; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $FlowArn       = $AddFlowVpcInterfacesResponse->FlowArn;
    my $VpcInterfaces = $AddFlowVpcInterfacesResponse->VpcInterfaces;

    # Returns a L<Paws::MediaConnect::AddFlowVpcInterfacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/AddFlowVpcInterfaces>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowArn => Str

The flow that you want to mutate.



=head2 B<REQUIRED> VpcInterfaces => ArrayRef[L<Paws::MediaConnect::VpcInterfaceRequest>]

A list of VPC interfaces that you want to add.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddFlowVpcInterfaces in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

