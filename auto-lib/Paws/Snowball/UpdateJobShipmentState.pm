
package Paws::Snowball::UpdateJobShipmentState;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has ShipmentState => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJobShipmentState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::UpdateJobShipmentStateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::UpdateJobShipmentState - Arguments for method UpdateJobShipmentState on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJobShipmentState on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method UpdateJobShipmentState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJobShipmentState.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
    my $UpdateJobShipmentStateResult = $snowball->UpdateJobShipmentState(
      JobId         => 'MyJobId',
      ShipmentState => 'RECEIVED',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/UpdateJobShipmentState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The job ID of the job whose shipment date you want to update, for
example C<JID123e4567-e89b-12d3-a456-426655440000>.



=head2 B<REQUIRED> ShipmentState => Str

The state of a device when it is being shipped.

Set to C<RECEIVED> when the device arrives at your location.

Set to C<RETURNED> when you have returned the device to AWS.

Valid values are: C<"RECEIVED">, C<"RETURNED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJobShipmentState in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

