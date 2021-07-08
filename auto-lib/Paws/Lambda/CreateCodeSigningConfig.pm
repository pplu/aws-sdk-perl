
package Paws::Lambda::CreateCodeSigningConfig;
  use Moose;
  has AllowedPublishers => (is => 'ro', isa => 'Paws::Lambda::AllowedPublishers', required => 1);
  has CodeSigningPolicies => (is => 'ro', isa => 'Paws::Lambda::CodeSigningPolicies');
  has Description => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCodeSigningConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-04-22/code-signing-configs/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::CreateCodeSigningConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::CreateCodeSigningConfig - Arguments for method CreateCodeSigningConfig on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCodeSigningConfig on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method CreateCodeSigningConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCodeSigningConfig.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $CreateCodeSigningConfigResponse = $lambda->CreateCodeSigningConfig(
      AllowedPublishers => {
        SigningProfileVersionArns => [ 'MyArn', ... ],    # min: 1, max: 20

      },
      CodeSigningPolicies => {
        UntrustedArtifactOnDeployment =>
          'Warn',    # values: Warn, Enforce; OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $CodeSigningConfig = $CreateCodeSigningConfigResponse->CodeSigningConfig;

    # Returns a L<Paws::Lambda::CreateCodeSigningConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/CreateCodeSigningConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllowedPublishers => L<Paws::Lambda::AllowedPublishers>

Signing profiles for this code signing configuration.



=head2 CodeSigningPolicies => L<Paws::Lambda::CodeSigningPolicies>

The code signing policies define the actions to take if the validation
checks fail.



=head2 Description => Str

Descriptive name for this code signing configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCodeSigningConfig in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

