
package Paws::CloudWatchEvents::DescribeReplay;
  use Moose;
  has ReplayName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReplay');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::DescribeReplayResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeReplay - Arguments for method DescribeReplay on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReplay on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method DescribeReplay.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReplay.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $DescribeReplayResponse = $events->DescribeReplay(
      ReplayName => 'MyReplayName',

    );

    # Results:
    my $Description           = $DescribeReplayResponse->Description;
    my $Destination           = $DescribeReplayResponse->Destination;
    my $EventEndTime          = $DescribeReplayResponse->EventEndTime;
    my $EventLastReplayedTime = $DescribeReplayResponse->EventLastReplayedTime;
    my $EventSourceArn        = $DescribeReplayResponse->EventSourceArn;
    my $EventStartTime        = $DescribeReplayResponse->EventStartTime;
    my $ReplayArn             = $DescribeReplayResponse->ReplayArn;
    my $ReplayEndTime         = $DescribeReplayResponse->ReplayEndTime;
    my $ReplayName            = $DescribeReplayResponse->ReplayName;
    my $ReplayStartTime       = $DescribeReplayResponse->ReplayStartTime;
    my $State                 = $DescribeReplayResponse->State;
    my $StateReason           = $DescribeReplayResponse->StateReason;

    # Returns a L<Paws::CloudWatchEvents::DescribeReplayResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/DescribeReplay>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReplayName => Str

The name of the replay to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReplay in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

