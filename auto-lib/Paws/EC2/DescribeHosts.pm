
package Paws::EC2::DescribeHosts;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::EC2::Types qw/EC2_Filter/;
  has Filter => (is => 'ro', isa => ArrayRef[EC2_Filter], predicate => 1);
  has HostIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeHosts');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribeHostsResult');
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
               'HostIds' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'Filter' => 'filter',
                       'NextToken' => 'nextToken',
                       'HostIds' => 'hostId',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeHosts - Arguments for method DescribeHosts on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHosts on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeHosts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHosts.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeHostsResult = $ec2->DescribeHosts(
      Filter => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      HostIds    => [ 'MyString', ... ],    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyString',             # OPTIONAL
    );

    # Results:
    my $Hosts     = $DescribeHostsResult->Hosts;
    my $NextToken = $DescribeHostsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeHostsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeHosts>

=head1 ATTRIBUTES


=head2 Filter => ArrayRef[EC2_Filter]

The filters.

=over

=item *

C<auto-placement> - Whether auto-placement is enabled or disabled
(C<on> | C<off>).

=item *

C<availability-zone> - The Availability Zone of the host.

=item *

C<client-token> - The idempotency token that you provided when you
allocated the host.

=item *

C<host-reservation-id> - The ID of the reservation assigned to this
host.

=item *

C<instance-type> - The instance type size that the Dedicated Host is
configured to support.

=item *

C<state> - The allocation state of the Dedicated Host (C<available> |
C<under-assessment> | C<permanent-failure> | C<released> |
C<released-permanent-failure>).

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=back




=head2 HostIds => ArrayRef[Str|Undef]

The IDs of the Dedicated Hosts. The IDs are used for targeted instance
launches.



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the returned C<nextToken> value. This value can be between 5 and 500.
If C<maxResults> is given a larger value than 500, you receive an
error.

You cannot specify this parameter and the host IDs parameter in the
same request.



=head2 NextToken => Str

The token to use to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHosts in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

