
package Paws::Config::DeliverConfigSnapshot;
  use Moose;
  has DeliveryChannelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deliveryChannelName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeliverConfigSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DeliverConfigSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeliverConfigSnapshot - Arguments for method DeliverConfigSnapshot on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeliverConfigSnapshot on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DeliverConfigSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeliverConfigSnapshot.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DeliverConfigSnapshotResponse = $config->DeliverConfigSnapshot(
      DeliveryChannelName => 'MyChannelName',

    );

    # Results:
    my $ConfigSnapshotId = $DeliverConfigSnapshotResponse->ConfigSnapshotId;

    # Returns a L<Paws::Config::DeliverConfigSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DeliverConfigSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryChannelName => Str

The name of the delivery channel through which the snapshot is
delivered.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeliverConfigSnapshot in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

