
package Paws::CostExplorer::GetDimensionValuesResponse;
  use Moose;
  has DimensionValues => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::DimensionValuesWithAttributes]', required => 1);
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ReturnSize => (is => 'ro', isa => 'Int', required => 1);
  has TotalSize => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetDimensionValuesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DimensionValues => ArrayRef[L<Paws::CostExplorer::DimensionValuesWithAttributes>]

The filters that you used to filter your request. Some dimensions are
available only for a specific context:

If you set the context to C<CostAndUsage>, you can use the following
dimensions for searching:

=over

=item *

AZ - The Availability Zone. An example is C<us-east-1a>.

=item *

INSTANCE_TYPE - The type of instance. An example is an EC2
C<m4.xlarge>.

=item *

LINKED_ACCOUNT - The description in the attribute map that includes the
full name of the member account. The value field contains the AWS ID of
the member account.

=item *

OPERATION - The action performed. Examples include C<RunInstance> and
C<CreateBucket>.

=item *

PURCHASE_TYPE - The reservation type of the purchase to which this
usage is related. Examples include On-Demand Instances and Standard
Reserved Instances.

=item *

SERVICE - The AWS service such as DynamoDB.

=item *

USAGE_TYPE - The type of usage. An example is C<DataTransfer-In-Bytes>.
The response for the C<GetDimensionValues> operation includes a unit
attribute, examples of which include GB and Hrs.

=item *

USAGE_TYPE_GROUP - The grouping of common usage types. An example is
EC2: CloudWatch E<ndash> Alarms. The response for this operation
includes a unit attribute.

=item *

RECORD_TYPE - The different types of charges such as RI fees, usage
costs, tax refunds, and credits.

=back

If you set the context to C<RESERVATIONS>, you can use the following
dimensions for searching:

=over

=item *

AZ - The Availability Zone. An example is C<us-east-1a>.

=item *

INSTANCE_TYPE - The type of instance. An example is an EC2
C<m4.xlarge>.

=item *

LINKED_ACCOUNT - The description in the attribute map that includes the
full name of the member account. The value field contains the AWS ID of
the member account.

=item *

PLATFORM - The specific combination of operating system, license model,
and software on an instance. For example, a Windows instance with SQL
Server Web and no license, or a Red Hat Enterprise Linux instance.

=item *

REGION - The AWS Region.

=item *

SCOPE - The scope of a Reserved Instance (RI). Values are regional or a
single Availability Zone.

=item *

TENANCY - The tenancy of a resource. Examples are shared or dedicated.

=back



=head2 NextPageToken => Str

The token for the next set of retrievable results. AWS provides the
token when the response from a previous call has more results than the
maximum page size.


=head2 B<REQUIRED> ReturnSize => Int

The number of results that AWS returned at one time.


=head2 B<REQUIRED> TotalSize => Int

The total number of search results.


=head2 _request_id => Str


=cut

1;