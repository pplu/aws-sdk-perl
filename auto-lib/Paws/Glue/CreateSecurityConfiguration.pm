
package Paws::Glue::CreateSecurityConfiguration;
  use Moose;
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::Glue::EncryptionConfiguration', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecurityConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateSecurityConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateSecurityConfiguration - Arguments for method CreateSecurityConfiguration on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSecurityConfiguration on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateSecurityConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSecurityConfiguration.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateSecurityConfigurationResponse =
      $glue->CreateSecurityConfiguration(
      EncryptionConfiguration => {
        CloudWatchEncryption => {
          CloudWatchEncryptionMode =>
            'DISABLED',    # values: DISABLED, SSE-KMS; OPTIONAL
          KmsKeyArn => 'MyKmsKeyArn',    # OPTIONAL
        },    # OPTIONAL
        JobBookmarksEncryption => {
          JobBookmarksEncryptionMode =>
            'DISABLED',    # values: DISABLED, CSE-KMS; OPTIONAL
          KmsKeyArn => 'MyKmsKeyArn',    # OPTIONAL
        },    # OPTIONAL
        S3Encryption => [
          {
            KmsKeyArn => 'MyKmsKeyArn',    # OPTIONAL
            S3EncryptionMode =>
              'DISABLED',    # values: DISABLED, SSE-KMS, SSE-S3; OPTIONAL
          },
          ...
        ],                   # OPTIONAL
      },
      Name => 'MyNameString',

      );

    # Results:
    my $CreatedTimestamp =
      $CreateSecurityConfigurationResponse->CreatedTimestamp;
    my $Name = $CreateSecurityConfigurationResponse->Name;

    # Returns a L<Paws::Glue::CreateSecurityConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateSecurityConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionConfiguration => L<Paws::Glue::EncryptionConfiguration>

The encryption configuration for the new security configuration.



=head2 B<REQUIRED> Name => Str

The name for the new security configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSecurityConfiguration in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

