
package Paws::IoT::DescribeSecurityProfile;
  use Moose;
  has SecurityProfileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'securityProfileName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecurityProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/security-profiles/{securityProfileName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeSecurityProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeSecurityProfile - Arguments for method DescribeSecurityProfile on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSecurityProfile on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeSecurityProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSecurityProfile.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeSecurityProfileResponse = $iot->DescribeSecurityProfile(
      SecurityProfileName => 'MySecurityProfileName',

    );

    # Results:
    my $AlertTargets     = $DescribeSecurityProfileResponse->AlertTargets;
    my $Behaviors        = $DescribeSecurityProfileResponse->Behaviors;
    my $CreationDate     = $DescribeSecurityProfileResponse->CreationDate;
    my $LastModifiedDate = $DescribeSecurityProfileResponse->LastModifiedDate;
    my $SecurityProfileArn =
      $DescribeSecurityProfileResponse->SecurityProfileArn;
    my $SecurityProfileDescription =
      $DescribeSecurityProfileResponse->SecurityProfileDescription;
    my $SecurityProfileName =
      $DescribeSecurityProfileResponse->SecurityProfileName;
    my $Version = $DescribeSecurityProfileResponse->Version;

    # Returns a L<Paws::IoT::DescribeSecurityProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeSecurityProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecurityProfileName => Str

The name of the security profile whose information you want to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSecurityProfile in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

