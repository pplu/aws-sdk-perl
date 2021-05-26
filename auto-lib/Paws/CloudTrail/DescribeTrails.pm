
package Paws::CloudTrail::DescribeTrails;
  use Moose;
  has IncludeShadowTrails => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeShadowTrails' );
  has TrailNameList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'trailNameList' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::DescribeTrailsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::DescribeTrails - Arguments for method DescribeTrails on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrails on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method DescribeTrails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrails.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $DescribeTrailsResponse = $cloudtrail->DescribeTrails(
      IncludeShadowTrails => 1,                # OPTIONAL
      TrailNameList => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $TrailList = $DescribeTrailsResponse->TrailList;

    # Returns a L<Paws::CloudTrail::DescribeTrailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/DescribeTrails>

=head1 ATTRIBUTES


=head2 IncludeShadowTrails => Bool

Specifies whether to include shadow trails in the response. A shadow
trail is the replication in a region of a trail that was created in a
different region, or in the case of an organization trail, the
replication of an organization trail in member accounts. If you do not
include shadow trails, organization trails in a member account and
region replication trails will not be returned. The default is true.



=head2 TrailNameList => ArrayRef[Str|Undef]

Specifies a list of trail names, trail ARNs, or both, of the trails to
describe. The format of a trail ARN is:

C<arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail>

If an empty list is specified, information for the trail in the current
region is returned.

=over

=item *

If an empty list is specified and C<IncludeShadowTrails> is false, then
information for all trails in the current region is returned.

=item *

If an empty list is specified and IncludeShadowTrails is null or true,
then information for all trails in the current region and any
associated shadow trails in other regions is returned.

=back

If one or more trail names are specified, information is returned only
if the names match the names of trails belonging only to the current
region. To return information about a trail in another region, you must
specify its trail ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrails in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

