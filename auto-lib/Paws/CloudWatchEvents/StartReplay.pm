
package Paws::CloudWatchEvents::StartReplay;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'Paws::CloudWatchEvents::ReplayDestination', required => 1);
  has EventEndTime => (is => 'ro', isa => 'Str', required => 1);
  has EventSourceArn => (is => 'ro', isa => 'Str', required => 1);
  has EventStartTime => (is => 'ro', isa => 'Str', required => 1);
  has ReplayName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartReplay');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::StartReplayResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::StartReplay - Arguments for method StartReplay on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartReplay on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method StartReplay.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartReplay.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $StartReplayResponse = $events->StartReplay(
      Destination => {
        Arn        => 'MyArn',    # min: 1, max: 1600
        FilterArns => [
          'MyArn', ...            # min: 1, max: 1600
        ],    # OPTIONAL
      },
      EventEndTime   => '1970-01-01T01:00:00',
      EventSourceArn => 'MyArn',
      EventStartTime => '1970-01-01T01:00:00',
      ReplayName     => 'MyReplayName',
      Description    => 'MyReplayDescription',    # OPTIONAL
    );

    # Results:
    my $ReplayArn       = $StartReplayResponse->ReplayArn;
    my $ReplayStartTime = $StartReplayResponse->ReplayStartTime;
    my $State           = $StartReplayResponse->State;
    my $StateReason     = $StartReplayResponse->StateReason;

    # Returns a L<Paws::CloudWatchEvents::StartReplayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/StartReplay>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the replay to start.



=head2 B<REQUIRED> Destination => L<Paws::CloudWatchEvents::ReplayDestination>

A C<ReplayDestination> object that includes details about the
destination for the replay.



=head2 B<REQUIRED> EventEndTime => Str

A time stamp for the time to stop replaying events. Only events that
occurred between the C<EventStartTime> and C<EventEndTime> are
replayed.



=head2 B<REQUIRED> EventSourceArn => Str

The ARN of the archive to replay events from.



=head2 B<REQUIRED> EventStartTime => Str

A time stamp for the time to start replaying events. Only events that
occurred between the C<EventStartTime> and C<EventEndTime> are
replayed.



=head2 B<REQUIRED> ReplayName => Str

The name of the replay to start.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartReplay in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

