
package Paws::CloudWatchEvents::PutEvents;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::PutEventsRequestEntry]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::PutEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutEvents - Arguments for method PutEvents on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEvents on the
L<Amazon CloudWatch Events|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method PutEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEvents.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $PutEventsResponse = $events->PutEvents(
      Entries => [
        {
          Detail     => 'MyString',                    # OPTIONAL
          DetailType => 'MyString',                    # OPTIONAL
          Resources  => [ 'MyEventResource', ... ],    # OPTIONAL
          Source     => 'MyString',                    # OPTIONAL
          Time       => '1970-01-01T01:00:00',         # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Entries          = $PutEventsResponse->Entries;
    my $FailedEntryCount = $PutEventsResponse->FailedEntryCount;

    # Returns a L<Paws::CloudWatchEvents::PutEventsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/PutEvents>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Entries => ArrayRef[L<Paws::CloudWatchEvents::PutEventsRequestEntry>]

The entry that defines an event in your system. You can specify several
parameters for the entry such as the source and type of the event,
resources associated with the event, and so on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEvents in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

