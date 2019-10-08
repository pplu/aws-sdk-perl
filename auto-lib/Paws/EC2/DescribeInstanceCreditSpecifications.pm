
package Paws::EC2::DescribeInstanceCreditSpecifications;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef Int/;
  use Paws::EC2::Types qw/EC2_Filter/;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[EC2_Filter], predicate => 1);
  has InstanceIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeInstanceCreditSpecifications');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribeInstanceCreditSpecificationsResult');
  class_has _result_key => (isa => Str, is => 'ro');

      sub params_map {
    our $Params_map ||= {
  'types' => {
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
               'InstanceIds' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'Filters' => 'Filter',
                       'InstanceIds' => 'InstanceId'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceCreditSpecifications - Arguments for method DescribeInstanceCreditSpecifications on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstanceCreditSpecifications on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeInstanceCreditSpecifications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstanceCreditSpecifications.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeInstanceCreditSpecificationsResult =
      $ec2->DescribeInstanceCreditSpecifications(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
      InstanceIds => [ 'MyString', ... ],   # OPTIONAL
      MaxResults  => 1,                     # OPTIONAL
      NextToken   => 'MyString',            # OPTIONAL
      );

    # Results:
    my $InstanceCreditSpecifications =
      $DescribeInstanceCreditSpecificationsResult->InstanceCreditSpecifications;
    my $NextToken = $DescribeInstanceCreditSpecificationsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeInstanceCreditSpecificationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeInstanceCreditSpecifications>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[EC2_Filter]

The filters.

=over

=item *

C<instance-id> - The ID of the instance.

=back




=head2 InstanceIds => ArrayRef[Str|Undef]

The instance IDs.

Default: Describes all your instances.

Constraints: Maximum 1000 explicitly specified instance IDs.



=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value. This value can be between 5 and 1000. You cannot specify this
parameter and the instance IDs parameter in the same call.



=head2 NextToken => Str

The token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstanceCreditSpecifications in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

