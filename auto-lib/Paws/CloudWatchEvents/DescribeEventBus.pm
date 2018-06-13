
package Paws::CloudWatchEvents::DescribeEventBus;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventBus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::DescribeEventBusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeEventBus - Arguments for method DescribeEventBus on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventBus on the
L<Amazon CloudWatch Events|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method DescribeEventBus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventBus.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $DescribeEventBusResponse = $events->DescribeEventBus();

    # Results:
    my $Arn    = $DescribeEventBusResponse->Arn;
    my $Name   = $DescribeEventBusResponse->Name;
    my $Policy = $DescribeEventBusResponse->Policy;

    # Returns a L<Paws::CloudWatchEvents::DescribeEventBusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/DescribeEventBus>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventBus in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

