
package Paws::LocationService::DisassociateTrackerConsumer;
  use Moose;
  has ConsumerArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConsumerArn', required => 1);
  has TrackerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TrackerName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateTrackerConsumer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tracking/v0/trackers/{TrackerName}/consumers/{ConsumerArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::DisassociateTrackerConsumerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DisassociateTrackerConsumer - Arguments for method DisassociateTrackerConsumer on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateTrackerConsumer on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method DisassociateTrackerConsumer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateTrackerConsumer.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $DisassociateTrackerConsumerResponse = $geo->DisassociateTrackerConsumer(
      ConsumerArn => 'MyArn',
      TrackerName => 'MyResourceName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/DisassociateTrackerConsumer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumerArn => Str

The Amazon Resource Name (ARN) for the geofence collection to be
disassociated from the tracker resource. Used when you need to specify
a resource across all AWS.

=over

=item *

Format example:
C<arn:partition:service:region:account-id:resource-type:resource-id>

=back




=head2 B<REQUIRED> TrackerName => Str

The name of the tracker resource to be dissociated from the consumer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateTrackerConsumer in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

