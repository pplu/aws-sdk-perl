
package Paws::DirectConnect::CreateLag;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' );
  has ConnectionsBandwidth => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionsBandwidth' , required => 1);
  has LagName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lagName' , required => 1);
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location' , required => 1);
  has NumberOfConnections => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfConnections' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLag');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::Lag');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateLag - Arguments for method CreateLag on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLag on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method CreateLag.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLag.

As an example:

  $service_obj->CreateLag(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/CreateLag>

=head1 ATTRIBUTES


=head2 ConnectionId => Str

The ID of an existing connection to migrate to the LAG.

Default: None



=head2 B<REQUIRED> ConnectionsBandwidth => Str

The bandwidth of the individual physical connections bundled by the
LAG.

Default: None

Available values: 1Gbps, 10Gbps



=head2 B<REQUIRED> LagName => Str

The name of the LAG.

Example: "C<3x10G LAG to AWS>"

Default: None



=head2 B<REQUIRED> Location => Str

The AWS Direct Connect location in which the LAG should be allocated.

Example: EqSV5

Default: None



=head2 B<REQUIRED> NumberOfConnections => Int

The number of physical connections initially provisioned and bundled by
the LAG.

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLag in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

