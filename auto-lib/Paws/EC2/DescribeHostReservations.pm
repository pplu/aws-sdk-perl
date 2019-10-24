
package Paws::EC2::DescribeHostReservations;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::EC2::Types qw/EC2_Filter/;
  has Filter => (is => 'ro', isa => ArrayRef[EC2_Filter], predicate => 1);
  has HostReservationIdSet => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeHostReservations');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribeHostReservationsResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filter' => {
                             'class' => 'Paws::EC2::Filter',
                             'type' => 'ArrayRef[EC2_Filter]'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'HostReservationIdSet' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeHostReservations - Arguments for method DescribeHostReservations on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHostReservations on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeHostReservations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHostReservations.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeHostReservationsResult = $ec2->DescribeHostReservations(
      Filter => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      HostReservationIdSet => [ 'MyString', ... ],    # OPTIONAL
      MaxResults           => 1,                      # OPTIONAL
      NextToken            => 'MyString',             # OPTIONAL
    );

    # Results:
    my $HostReservationSet =
      $DescribeHostReservationsResult->HostReservationSet;
    my $NextToken = $DescribeHostReservationsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeHostReservationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeHostReservations>

=head1 ATTRIBUTES


=head2 Filter => ArrayRef[EC2_Filter]

The filters.

=over

=item *

C<instance-family> - The instance family (for example, C<m4>).

=item *

C<payment-option> - The payment option (C<NoUpfront> |
C<PartialUpfront> | C<AllUpfront>).

=item *

C<state> - The state of the reservation (C<payment-pending> |
C<payment-failed> | C<active> | C<retired>).

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=back




=head2 HostReservationIdSet => ArrayRef[Str|Undef]

The host reservation IDs.



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the returned C<nextToken> value. This value can be between 5 and 500.
If C<maxResults> is given a larger value than 500, you receive an
error.



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHostReservations in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

