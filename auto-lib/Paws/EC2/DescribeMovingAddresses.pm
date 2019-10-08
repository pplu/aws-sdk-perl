
package Paws::EC2::DescribeMovingAddresses;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Int Undef/;
  use Paws::EC2::Types qw/EC2_Filter/;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[EC2_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has PublicIps => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeMovingAddresses');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribeMovingAddressesResult');
  class_has _result_key => (isa => Str, is => 'ro');

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'PublicIps' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::EC2::Filter',
                              'type' => 'ArrayRef[EC2_Filter]'
                            },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'PublicIps' => 'publicIp',
                       'DryRun' => 'dryRun',
                       'NextToken' => 'nextToken',
                       'Filters' => 'filter',
                       'MaxResults' => 'maxResults'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeMovingAddresses - Arguments for method DescribeMovingAddresses on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMovingAddresses on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeMovingAddresses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMovingAddresses.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe your moving addresses
    # This example describes all of your moving Elastic IP addresses.
    my $DescribeMovingAddressesResult = $ec2->DescribeMovingAddresses();

    # Results:
    my $MovingAddressStatuses =
      $DescribeMovingAddressesResult->MovingAddressStatuses;

    # Returns a L<Paws::EC2::DescribeMovingAddressesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeMovingAddresses>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[EC2_Filter]

One or more filters.

=over

=item *

C<moving-status> - The status of the Elastic IP address (C<MovingToVpc>
| C<RestoringToClassic>).

=back




=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results of the initial request can be seen by
sending another request with the returned C<NextToken> value. This
value can be between 5 and 1000; if C<MaxResults> is given a value
outside of this range, an error is returned.

Default: If no value is provided, the default is 1000.



=head2 NextToken => Str

The token for the next page of results.



=head2 PublicIps => ArrayRef[Str|Undef]

One or more Elastic IP addresses.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMovingAddresses in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

