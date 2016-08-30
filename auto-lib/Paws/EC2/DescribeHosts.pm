
package Paws::EC2::DescribeHosts;
  use Moose;
  has Filter => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'filter' );
  has HostIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'hostId' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHosts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeHostsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeHosts - Arguments for method DescribeHosts on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHosts on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeHosts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHosts.

As an example:

  $service_obj->DescribeHosts(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filter => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<instance-type> - The instance type size that the Dedicated Host is
configured to support.

=item *

C<auto-placement> - Whether auto-placement is enabled or disabled
(C<on> | C<off>).

=item *

C<host-reservation-id> - The ID of the reservation assigned to this
host.

=item *

C<client-token> - The idempotency token you provided when you launched
the instance

=item *

C<state>- The allocation state of the Dedicated Host (C<available> |
C<under-assessment> | C<permanent-failure> | C<released> |
C<released-permanent-failure>).

=item *

C<availability-zone> - The Availability Zone of the host.

=back




=head2 HostIds => ArrayRef[Str]

The IDs of the Dedicated Hosts. The IDs are used for targeted instance
launches.



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the returned C<nextToken> value. This value can be between 5 and 500;
if C<maxResults> is given a larger value than 500, you will receive an
error. You cannot specify this parameter and the host IDs parameter in
the same request.



=head2 NextToken => Str

The token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHosts in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

