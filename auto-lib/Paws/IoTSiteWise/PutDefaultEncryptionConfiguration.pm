
package Paws::IoTSiteWise::PutDefaultEncryptionConfiguration;
  use Moose;
  has EncryptionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionType', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDefaultEncryptionConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuration/account/encryption');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::PutDefaultEncryptionConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::PutDefaultEncryptionConfiguration - Arguments for method PutDefaultEncryptionConfiguration on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDefaultEncryptionConfiguration on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method PutDefaultEncryptionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDefaultEncryptionConfiguration.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $PutDefaultEncryptionConfigurationResponse =
      $iotsitewise->PutDefaultEncryptionConfiguration(
      EncryptionType => 'SITEWISE_DEFAULT_ENCRYPTION',
      KmsKeyId       => 'MyKmsKeyId',                    # OPTIONAL
      );

    # Results:
    my $ConfigurationStatus =
      $PutDefaultEncryptionConfigurationResponse->ConfigurationStatus;
    my $EncryptionType =
      $PutDefaultEncryptionConfigurationResponse->EncryptionType;
    my $KmsKeyArn = $PutDefaultEncryptionConfigurationResponse->KmsKeyArn;

# Returns a L<Paws::IoTSiteWise::PutDefaultEncryptionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/PutDefaultEncryptionConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionType => Str

The type of encryption used for the encryption configuration.

Valid values are: C<"SITEWISE_DEFAULT_ENCRYPTION">, C<"KMS_BASED_ENCRYPTION">

=head2 KmsKeyId => Str

The Key ID of the customer managed customer master key (CMK) used for
AWS KMS encryption. This is required if you use
C<KMS_BASED_ENCRYPTION>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDefaultEncryptionConfiguration in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

