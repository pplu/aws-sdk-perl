
package Paws::EC2::DescribeTransitGatewayAttachments;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TransitGatewayAttachmentIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTransitGatewayAttachments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeTransitGatewayAttachmentsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTransitGatewayAttachments - Arguments for method DescribeTransitGatewayAttachments on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTransitGatewayAttachments on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeTransitGatewayAttachments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTransitGatewayAttachments.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeTransitGatewayAttachmentsResult =
      $ec2->DescribeTransitGatewayAttachments(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],                       # OPTIONAL
        },
        ...
      ],                           # OPTIONAL
      MaxResults                  => 1,             # OPTIONAL
      NextToken                   => 'MyString',    # OPTIONAL
      TransitGatewayAttachmentIds => [
        'MyString', ...                             # OPTIONAL
      ],                                            # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeTransitGatewayAttachmentsResult->NextToken;
    my $TransitGatewayAttachments =
      $DescribeTransitGatewayAttachmentsResult->TransitGatewayAttachments;

    # Returns a L<Paws::EC2::DescribeTransitGatewayAttachmentsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeTransitGatewayAttachments>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters. The possible values are:

=over

=item *

C<association.state> - The state of the association (C<associating> |
C<associated> | C<disassociating>).

=item *

C<association.transit-gateway-route-table-id> - The ID of the route
table for the transit gateway.

=item *

C<resource-id> - The ID of the resource.

=item *

C<resource-owner-id> - The ID of the AWS account that owns the
resource.

=item *

C<resource-type> - The resource type (C<vpc> | C<vpn>).

=item *

C<state> - The state of the attachment (C<available> | C<deleted> |
C<deleting> | C<failed> | C<modifying> | C<pendingAcceptance> |
C<pending> | C<rollingBack> | C<rejected> | C<rejecting>).

=item *

C<transit-gateway-attachment-id> - The ID of the attachment.

=item *

C<transit-gateway-id> - The ID of the transit gateway.

=item *

C<transit-gateway-owner-id> - The ID of the AWS account that owns the
transit gateway.

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 TransitGatewayAttachmentIds => ArrayRef[Str|Undef]

The IDs of the attachments.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTransitGatewayAttachments in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

