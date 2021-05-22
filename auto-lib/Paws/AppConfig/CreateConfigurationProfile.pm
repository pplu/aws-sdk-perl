
package Paws::AppConfig::CreateConfigurationProfile;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ApplicationId', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RetrievalRoleArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::AppConfig::TagMap');
  has Validators => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Validator]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfigurationProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{ApplicationId}/configurationprofiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::ConfigurationProfile');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::CreateConfigurationProfile - Arguments for method CreateConfigurationProfile on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationProfile on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method CreateConfigurationProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationProfile.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $ConfigurationProfile = $appconfig->CreateConfigurationProfile(
      ApplicationId    => 'MyId',
      LocationUri      => 'MyUri',
      Name             => 'MyName',
      Description      => 'MyDescription',    # OPTIONAL
      RetrievalRoleArn => 'MyRoleArn',        # OPTIONAL
      Tags             => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Validators => [
        {
          Content => 'MyStringWithLengthBetween0And32768',    # max: 32768
          Type => 'JSON_SCHEMA',    # values: JSON_SCHEMA, LAMBDA

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $ApplicationId    = $ConfigurationProfile->ApplicationId;
    my $Description      = $ConfigurationProfile->Description;
    my $Id               = $ConfigurationProfile->Id;
    my $LocationUri      = $ConfigurationProfile->LocationUri;
    my $Name             = $ConfigurationProfile->Name;
    my $RetrievalRoleArn = $ConfigurationProfile->RetrievalRoleArn;
    my $Validators       = $ConfigurationProfile->Validators;

    # Returns a L<Paws::AppConfig::ConfigurationProfile> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/CreateConfigurationProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The application ID.



=head2 Description => Str

A description of the configuration profile.



=head2 B<REQUIRED> LocationUri => Str

A URI to locate the configuration. You can specify a Systems Manager
(SSM) document, an SSM Parameter Store parameter, or an Amazon S3
object. For an SSM document, specify either the document name in the
format C<ssm-document://E<lt>Document_nameE<gt>> or the Amazon Resource
Name (ARN). For a parameter, specify either the parameter name in the
format C<ssm-parameter://E<lt>Parameter_nameE<gt>> or the ARN. For an
Amazon S3 object, specify the URI in the following format:
C<s3://E<lt>bucketE<gt>/E<lt>objectKeyE<gt> >. Here is an example:
s3://my-bucket/my-app/us-east-1/my-config.json



=head2 B<REQUIRED> Name => Str

A name for the configuration profile.



=head2 RetrievalRoleArn => Str

The ARN of an IAM role with permission to access the configuration at
the specified LocationUri.



=head2 Tags => L<Paws::AppConfig::TagMap>

Metadata to assign to the configuration profile. Tags help organize and
categorize your AppConfig resources. Each tag consists of a key and an
optional value, both of which you define.



=head2 Validators => ArrayRef[L<Paws::AppConfig::Validator>]

A list of methods for validating the configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationProfile in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

