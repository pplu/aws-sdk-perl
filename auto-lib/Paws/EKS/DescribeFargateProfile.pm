
package Paws::EKS::DescribeFargateProfile;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has FargateProfileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fargateProfileName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFargateProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/fargate-profiles/{fargateProfileName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::DescribeFargateProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeFargateProfile - Arguments for method DescribeFargateProfile on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFargateProfile on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method DescribeFargateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFargateProfile.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $DescribeFargateProfileResponse = $eks->DescribeFargateProfile(
      ClusterName        => 'MyString',
      FargateProfileName => 'MyString',

    );

    # Results:
    my $FargateProfile = $DescribeFargateProfileResponse->FargateProfile;

    # Returns a L<Paws::EKS::DescribeFargateProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/DescribeFargateProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the Amazon EKS cluster associated with the Fargate profile.



=head2 B<REQUIRED> FargateProfileName => Str

The name of the Fargate profile to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFargateProfile in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

