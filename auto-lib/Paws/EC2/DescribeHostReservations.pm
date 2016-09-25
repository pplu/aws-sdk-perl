
package Paws::EC2::DescribeHostReservations;
  use Moose;
  has Filter => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]');
  has HostReservationIdSet => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHostReservations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeHostReservationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeHostReservations - Arguments for method DescribeHostReservations on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHostReservations on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeHostReservations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHostReservations.

As an example:

  $service_obj->DescribeHostReservations(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filter => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<instance-family> - The instance family (e.g., C<m4>).

=item *

C<payment-option> - The payment option (C<No Upfront> | C<Partial
Upfront> | C<All Upfront>).

=item *

C<state> - The state of the reservation (C<payment-pending> |
C<payment-failed> | C<active> | C<retired>).

=back




=head2 HostReservationIdSet => ArrayRef[Str|Undef]

One or more host reservation IDs.



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the returned C<nextToken> value. This value can be between 5 and 500;
if C<maxResults> is given a larger value than 500, you will receive an
error.



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHostReservations in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

