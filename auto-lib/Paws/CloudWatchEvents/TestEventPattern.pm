
package Paws::CloudWatchEvents::TestEventPattern;
  use Moose;
  has Event => (is => 'ro', isa => 'Str', required => 1);
  has EventPattern => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestEventPattern');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::TestEventPatternResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::TestEventPattern - Arguments for method TestEventPattern on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestEventPattern on the
L<Amazon CloudWatch Events|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method TestEventPattern.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestEventPattern.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $TestEventPatternResponse = $events->TestEventPattern(
      Event        => 'MyString',
      EventPattern => 'MyEventPattern',

    );

    # Results:
    my $Result = $TestEventPatternResponse->Result;

    # Returns a L<Paws::CloudWatchEvents::TestEventPatternResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/TestEventPattern>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Event => Str

The event, in JSON format, to test against the event pattern.



=head2 B<REQUIRED> EventPattern => Str

The event pattern. For more information, see Events and Event Patterns
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html)
in the I<Amazon CloudWatch Events User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestEventPattern in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

