
package Paws::Connect::DescribeRoutingProfile;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has RoutingProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RoutingProfileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRoutingProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/routing-profiles/{InstanceId}/{RoutingProfileId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DescribeRoutingProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeRoutingProfile - Arguments for method DescribeRoutingProfile on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRoutingProfile on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DescribeRoutingProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRoutingProfile.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DescribeRoutingProfileResponse = $connect->DescribeRoutingProfile(
      InstanceId       => 'MyInstanceId',
      RoutingProfileId => 'MyRoutingProfileId',

    );

    # Results:
    my $RoutingProfile = $DescribeRoutingProfileResponse->RoutingProfile;

    # Returns a L<Paws::Connect::DescribeRoutingProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DescribeRoutingProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 B<REQUIRED> RoutingProfileId => Str

The identifier of the routing profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRoutingProfile in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

