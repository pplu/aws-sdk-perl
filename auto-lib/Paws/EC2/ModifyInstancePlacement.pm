
package Paws::EC2::ModifyInstancePlacement;
  use Moose;
  has Affinity => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'affinity' );
  has HostId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostId' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);
  has Tenancy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tenancy' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstancePlacement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyInstancePlacementResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstancePlacement - Arguments for method ModifyInstancePlacement on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstancePlacement on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method ModifyInstancePlacement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstancePlacement.

As an example:

  $service_obj->ModifyInstancePlacement(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Affinity => Str

The new affinity setting for the instance.

Valid values are: C<"default">, C<"host">

=head2 HostId => Str

The ID of the Dedicated Host that the instance will have affinity with.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance that you are modifying.



=head2 Tenancy => Str

The tenancy of the instance that you are modifying.

Valid values are: C<"dedicated">, C<"host">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstancePlacement in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

