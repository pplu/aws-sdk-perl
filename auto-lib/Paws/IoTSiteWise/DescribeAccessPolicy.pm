
package Paws::IoTSiteWise::DescribeAccessPolicy;
  use Moose;
  has AccessPolicyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accessPolicyId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccessPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/access-policies/{accessPolicyId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeAccessPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeAccessPolicy - Arguments for method DescribeAccessPolicy on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccessPolicy on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeAccessPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccessPolicy.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeAccessPolicyResponse = $iotsitewise->DescribeAccessPolicy(
      AccessPolicyId => 'MyID',

    );

    # Results:
    my $AccessPolicyArn = $DescribeAccessPolicyResponse->AccessPolicyArn;
    my $AccessPolicyCreationDate =
      $DescribeAccessPolicyResponse->AccessPolicyCreationDate;
    my $AccessPolicyId = $DescribeAccessPolicyResponse->AccessPolicyId;
    my $AccessPolicyIdentity =
      $DescribeAccessPolicyResponse->AccessPolicyIdentity;
    my $AccessPolicyLastUpdateDate =
      $DescribeAccessPolicyResponse->AccessPolicyLastUpdateDate;
    my $AccessPolicyPermission =
      $DescribeAccessPolicyResponse->AccessPolicyPermission;
    my $AccessPolicyResource =
      $DescribeAccessPolicyResponse->AccessPolicyResource;

    # Returns a L<Paws::IoTSiteWise::DescribeAccessPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeAccessPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPolicyId => Str

The ID of the access policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccessPolicy in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

