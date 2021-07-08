
package Paws::Lambda::UpdateCodeSigningConfig;
  use Moose;
  has AllowedPublishers => (is => 'ro', isa => 'Paws::Lambda::AllowedPublishers');
  has CodeSigningConfigArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CodeSigningConfigArn', required => 1);
  has CodeSigningPolicies => (is => 'ro', isa => 'Paws::Lambda::CodeSigningPolicies');
  has Description => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCodeSigningConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-04-22/code-signing-configs/{CodeSigningConfigArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::UpdateCodeSigningConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::UpdateCodeSigningConfig - Arguments for method UpdateCodeSigningConfig on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCodeSigningConfig on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method UpdateCodeSigningConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCodeSigningConfig.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $UpdateCodeSigningConfigResponse = $lambda->UpdateCodeSigningConfig(
      CodeSigningConfigArn => 'MyCodeSigningConfigArn',
      AllowedPublishers    => {
        SigningProfileVersionArns => [ 'MyArn', ... ],    # min: 1, max: 20

      },    # OPTIONAL
      CodeSigningPolicies => {
        UntrustedArtifactOnDeployment =>
          'Warn',    # values: Warn, Enforce; OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',    # OPTIONAL
    );

    # Results:
    my $CodeSigningConfig = $UpdateCodeSigningConfigResponse->CodeSigningConfig;

    # Returns a L<Paws::Lambda::UpdateCodeSigningConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/UpdateCodeSigningConfig>

=head1 ATTRIBUTES


=head2 AllowedPublishers => L<Paws::Lambda::AllowedPublishers>

Signing profiles for this code signing configuration.



=head2 B<REQUIRED> CodeSigningConfigArn => Str

The The Amazon Resource Name (ARN) of the code signing configuration.



=head2 CodeSigningPolicies => L<Paws::Lambda::CodeSigningPolicies>

The code signing policy.



=head2 Description => Str

Descriptive name for this code signing configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCodeSigningConfig in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

