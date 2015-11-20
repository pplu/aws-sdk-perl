
package Paws::CloudWatchLogs::PutSubscriptionFilter;
  use Moose;
  has DestinationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationArn' , required => 1);
  has FilterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterName' , required => 1);
  has FilterPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterPattern' , required => 1);
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSubscriptionFilter');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutSubscriptionFilter - Arguments for method PutSubscriptionFilter on Paws::CloudWatchLogs

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSubscriptionFilter on the 
Amazon CloudWatch Logs service. Use the attributes of this class
as arguments to method PutSubscriptionFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSubscriptionFilter.

As an example:

  $service_obj->PutSubscriptionFilter(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationArn => Str

  The ARN of the destination to deliver matching log events to.
Currently, the supported destinations are:

=over

=item * A Amazon Kinesis stream belonging to the same account as the
subscription filter, for same-account delivery.

=item * A logical destination (used via an ARN of C<Destination>)
belonging to a different account, for cross-account delivery.

=back



=head2 B<REQUIRED> FilterName => Str

  A name for the subscription filter.


=head2 B<REQUIRED> FilterPattern => Str

  A valid CloudWatch Logs filter pattern for subscribing to a filtered
stream of log events.


=head2 B<REQUIRED> LogGroupName => Str

  The name of the log group to associate the subscription filter with.


=head2 RoleArn => Str

  The ARN of an IAM role that grants Amazon CloudWatch Logs permissions
to deliver ingested log events to the destination stream. You don't
need to provide the ARN when you are working with a logical destination
(used via an ARN of C<Destination>) for cross-account delivery.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSubscriptionFilter in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

