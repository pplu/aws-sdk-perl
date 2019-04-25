
package Paws::EC2::DescribeVpcEndpointConnectionNotifications;
  use Moose;
  has ConnectionNotificationId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcEndpointConnectionNotifications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVpcEndpointConnectionNotificationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcEndpointConnectionNotifications - Arguments for method DescribeVpcEndpointConnectionNotifications on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVpcEndpointConnectionNotifications on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVpcEndpointConnectionNotifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVpcEndpointConnectionNotifications.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeVpcEndpointConnectionNotificationsResult =
      $ec2->DescribeVpcEndpointConnectionNotifications(
      ConnectionNotificationId => 'MyString',    # OPTIONAL
      DryRun                   => 1,             # OPTIONAL
      Filters                  => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],         # OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      MaxResults => 1,                           # OPTIONAL
      NextToken  => 'MyString',                  # OPTIONAL
      );

    # Results:
    my $ConnectionNotificationSet =
      $DescribeVpcEndpointConnectionNotificationsResult
      ->ConnectionNotificationSet;
    my $NextToken =
      $DescribeVpcEndpointConnectionNotificationsResult->NextToken;

# Returns a L<Paws::EC2::DescribeVpcEndpointConnectionNotificationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVpcEndpointConnectionNotifications>

=head1 ATTRIBUTES


=head2 ConnectionNotificationId => Str

The ID of the notification.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<connection-notification-arn> - The ARN of SNS topic for the
notification.

=item *

C<connection-notification-id> - The ID of the notification.

=item *

C<connection-notification-state> - The state of the notification
(C<Enabled> | C<Disabled>).

=item *

C<connection-notification-type> - The type of notification (C<Topic>).

=item *

C<service-id> - The ID of the endpoint service.

=item *

C<vpc-endpoint-id> - The ID of the VPC endpoint.

=back




=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another request with the returned
C<NextToken> value.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVpcEndpointConnectionNotifications in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

