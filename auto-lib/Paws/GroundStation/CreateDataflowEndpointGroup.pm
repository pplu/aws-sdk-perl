
package Paws::GroundStation::CreateDataflowEndpointGroup;
  use Moose;
  has EndpointDetails => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::EndpointDetails]', traits => ['NameInRequest'], request_name => 'endpointDetails', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataflowEndpointGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataflowEndpointGroup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GroundStation::DataflowEndpointGroupIdResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::CreateDataflowEndpointGroup - Arguments for method CreateDataflowEndpointGroup on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataflowEndpointGroup on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method CreateDataflowEndpointGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataflowEndpointGroup.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $DataflowEndpointGroupIdResponse =
      $groundstation->CreateDataflowEndpointGroup(
      EndpointDetails => [
        {
          Endpoint => {
            Address => {
              Name => 'MyString',
              Port => 1,

            },    # OPTIONAL
            Mtu    => 1,               # min: 1400, max: 1500; OPTIONAL
            Name   => 'MySafeName',    # min: 1, max: 256; OPTIONAL
            Status => 'created'
            ,   # values: created, creating, deleted, deleting, failed; OPTIONAL
          },    # OPTIONAL
          SecurityDetails => {
            RoleArn          => 'MyRoleArn',
            SecurityGroupIds => [ 'MyString', ... ],
            SubnetIds        => [ 'MyString', ... ],

          },    # OPTIONAL
        },
        ...
      ],
      Tags => { 'MyString' => 'MyString', },    # OPTIONAL
      );

    # Results:
    my $DataflowEndpointGroupId =
      $DataflowEndpointGroupIdResponse->DataflowEndpointGroupId;

    # Returns a L<Paws::GroundStation::DataflowEndpointGroupIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/CreateDataflowEndpointGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointDetails => ArrayRef[L<Paws::GroundStation::EndpointDetails>]

Endpoint details of each endpoint in the dataflow endpoint group.



=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags of a dataflow endpoint group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataflowEndpointGroup in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

