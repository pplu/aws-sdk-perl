
package Paws::CloudWatchEvents::CreateEventBus;
  use Moose;
  has EventSourceName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventBus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::CreateEventBusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreateEventBus - Arguments for method CreateEventBus on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventBus on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method CreateEventBus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventBus.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $CreateEventBusResponse = $events->CreateEventBus(
      Name            => 'MyEventBusName',
      EventSourceName => 'MyEventSourceName',    # OPTIONAL
      Tags            => [
        {
          Key   => 'MyTagKey',                   # min: 1, max: 128
          Value => 'MyTagValue',                 # max: 256

        },
        ...
      ],                                         # OPTIONAL
    );

    # Results:
    my $EventBusArn = $CreateEventBusResponse->EventBusArn;

    # Returns a L<Paws::CloudWatchEvents::CreateEventBusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/CreateEventBus>

=head1 ATTRIBUTES


=head2 EventSourceName => Str

If you are creating a partner event bus, this specifies the partner
event source that the new event bus will be matched with.



=head2 B<REQUIRED> Name => Str

The name of the new event bus.

Event bus names cannot contain the / character. You can't use the name
C<default> for a custom event bus, as this name is already used for
your account's default event bus.

If this is a partner event bus, the name must exactly match the name of
the partner event source that this event bus is matched to.



=head2 Tags => ArrayRef[L<Paws::CloudWatchEvents::Tag>]

Tags to associate with the event bus.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventBus in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

