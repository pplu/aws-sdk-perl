
package Paws::EC2::DescribeTrafficMirrorTargets;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Int Undef/;
  use Paws::EC2::Types qw/EC2_Filter/;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[EC2_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has TrafficMirrorTargetIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeTrafficMirrorTargets');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribeTrafficMirrorTargetsResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Filters' => 'Filter',
                       'TrafficMirrorTargetIds' => 'TrafficMirrorTargetId'
                     },
  'types' => {
               'Filters' => {
                              'class' => 'Paws::EC2::Filter',
                              'type' => 'ArrayRef[EC2_Filter]'
                            },
               'TrafficMirrorTargetIds' => {
                                             'type' => 'ArrayRef[Str|Undef]'
                                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'DryRun' => {
                             'type' => 'Bool'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTrafficMirrorTargets - Arguments for method DescribeTrafficMirrorTargets on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrafficMirrorTargets on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeTrafficMirrorTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrafficMirrorTargets.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeTrafficMirrorTargetsResult = $ec2->DescribeTrafficMirrorTargets(
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
      MaxResults             => 1,                # OPTIONAL
      NextToken              => 'MyNextToken',    # OPTIONAL
      TrafficMirrorTargetIds => [
        'MyString', ...                           # OPTIONAL
      ],                                          # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeTrafficMirrorTargetsResult->NextToken;
    my $TrafficMirrorTargets =
      $DescribeTrafficMirrorTargetsResult->TrafficMirrorTargets;

    # Returns a L<Paws::EC2::DescribeTrafficMirrorTargetsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeTrafficMirrorTargets>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[EC2_Filter]

One or more filters. The possible values are:

=over

=item *

C<description>: The Traffic Mirror target description.

=item *

C<network-interface-id>: The ID of the Traffic Mirror session network
interface.

=item *

C<network-load-balancer-arn>: The Amazon Resource Name (ARN) of the
Network Load Balancer that is associated with the session.

=item *

C<owner-id>: The ID of the account that owns the Traffic Mirror
session.

=item *

C<traffic-mirror-target-id>: The ID of the Traffic Mirror target.

=back




=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 TrafficMirrorTargetIds => ArrayRef[Str|Undef]

The ID of the Traffic Mirror targets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrafficMirrorTargets in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

