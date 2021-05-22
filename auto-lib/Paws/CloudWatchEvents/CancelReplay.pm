
package Paws::CloudWatchEvents::CancelReplay;
  use Moose;
  has ReplayName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelReplay');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::CancelReplayResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CancelReplay - Arguments for method CancelReplay on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelReplay on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method CancelReplay.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelReplay.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $CancelReplayResponse = $events->CancelReplay(
      ReplayName => 'MyReplayName',

    );

    # Results:
    my $ReplayArn   = $CancelReplayResponse->ReplayArn;
    my $State       = $CancelReplayResponse->State;
    my $StateReason = $CancelReplayResponse->StateReason;

    # Returns a L<Paws::CloudWatchEvents::CancelReplayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/CancelReplay>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReplayName => Str

The name of the replay to cancel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelReplay in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

