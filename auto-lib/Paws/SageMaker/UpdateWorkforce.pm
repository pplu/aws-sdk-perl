
package Paws::SageMaker::UpdateWorkforce;
  use Moose;
  has OidcConfig => (is => 'ro', isa => 'Paws::SageMaker::OidcConfig');
  has SourceIpConfig => (is => 'ro', isa => 'Paws::SageMaker::SourceIpConfig');
  has WorkforceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkforce');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateWorkforceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateWorkforce - Arguments for method UpdateWorkforce on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkforce on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateWorkforce.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkforce.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateWorkforceResponse = $api . sagemaker->UpdateWorkforce(
      WorkforceName => 'MyWorkforceName',
      OidcConfig    => {
        AuthorizationEndpoint => 'MyOidcEndpoint',    # max: 500
        ClientId              => 'MyClientId',        # min: 1, max: 1024
        ClientSecret          => 'MyClientSecret',    # min: 1, max: 1024
        Issuer                => 'MyOidcEndpoint',    # max: 500
        JwksUri               => 'MyOidcEndpoint',    # max: 500
        LogoutEndpoint        => 'MyOidcEndpoint',    # max: 500
        TokenEndpoint         => 'MyOidcEndpoint',    # max: 500
        UserInfoEndpoint      => 'MyOidcEndpoint',    # max: 500

      },    # OPTIONAL
      SourceIpConfig => {
        Cidrs => [
          'MyCidr', ...    # min: 4, max: 64
        ],

      },    # OPTIONAL
    );

    # Results:
    my $Workforce = $UpdateWorkforceResponse->Workforce;

    # Returns a L<Paws::SageMaker::UpdateWorkforceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateWorkforce>

=head1 ATTRIBUTES


=head2 OidcConfig => L<Paws::SageMaker::OidcConfig>

Use this parameter to update your OIDC Identity Provider (IdP)
configuration for a workforce made using your own IdP.



=head2 SourceIpConfig => L<Paws::SageMaker::SourceIpConfig>

A list of one to ten worker IP address ranges (CIDRs
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html))
that can be used to access tasks assigned to this workforce.

Maximum: Ten CIDR values



=head2 B<REQUIRED> WorkforceName => Str

The name of the private workforce that you want to update. You can find
your workforce name by using the operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkforce in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

