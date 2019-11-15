
package Paws::CloudWatchEvents::DescribeEventSource;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventSource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::DescribeEventSourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeEventSource - Arguments for method DescribeEventSource on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventSource on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method DescribeEventSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventSource.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $DescribeEventSourceResponse = $events->DescribeEventSource(
      Name => 'MyEventSourceName',

    );

    # Results:
    my $Arn            = $DescribeEventSourceResponse->Arn;
    my $CreatedBy      = $DescribeEventSourceResponse->CreatedBy;
    my $CreationTime   = $DescribeEventSourceResponse->CreationTime;
    my $ExpirationTime = $DescribeEventSourceResponse->ExpirationTime;
    my $Name           = $DescribeEventSourceResponse->Name;
    my $State          = $DescribeEventSourceResponse->State;

    # Returns a L<Paws::CloudWatchEvents::DescribeEventSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/cloudwatch/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the partner event source to display the details of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventSource in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

