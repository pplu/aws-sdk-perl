
package Paws::ImageBuilder::UpdateDistributionConfiguration;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DistributionConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionConfigurationArn', required => 1);
  has Distributions => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::Distribution]', traits => ['NameInRequest'], request_name => 'distributions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDistributionConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateDistributionConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::UpdateDistributionConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::UpdateDistributionConfiguration - Arguments for method UpdateDistributionConfiguration on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDistributionConfiguration on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method UpdateDistributionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDistributionConfiguration.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $UpdateDistributionConfigurationResponse =
      $imagebuilder->UpdateDistributionConfiguration(
      ClientToken                  => 'MyClientToken',
      DistributionConfigurationArn => 'MyDistributionConfigurationArn',
      Distributions                => [
        {
          Region => 'MyNonEmptyString',    # min: 1, max: 1024
          AmiDistributionConfiguration => {
            AmiTags => {
              'MyTagKey' =>
                'MyTagValue',    # key: min: 1, max: 128, value: max: 256
            },    # min: 1, max: 50; OPTIONAL
            Description      => 'MyNonEmptyString',    # min: 1, max: 1024
            KmsKeyId         => 'MyNonEmptyString',    # min: 1, max: 1024
            LaunchPermission => {
              UserGroups => [
                'MyNonEmptyString', ...                # min: 1, max: 1024
              ],                                       # OPTIONAL
              UserIds => [
                'MyAccountId', ...                     # OPTIONAL
              ],    # min: 1, max: 1536; OPTIONAL
            },    # OPTIONAL
            Name             => 'MyAmiNameString',  # min: 1, max: 127; OPTIONAL
            TargetAccountIds => [
              'MyAccountId', ...                    # OPTIONAL
            ],    # min: 1, max: 1536; OPTIONAL
          },    # OPTIONAL
          ContainerDistributionConfiguration => {
            TargetRepository => {
              RepositoryName => 'MyNonEmptyString',    # min: 1, max: 1024
              Service        => 'ECR',                 # values: ECR

            },
            ContainerTags => [
              'MyNonEmptyString', ...                  # min: 1, max: 1024
            ],                                         # OPTIONAL
            Description => 'MyNonEmptyString',         # min: 1, max: 1024
          },    # OPTIONAL
          LaunchTemplateConfigurations => [
            {
              LaunchTemplateId  => 'MyLaunchTemplateId',
              AccountId         => 'MyAccountId',          # OPTIONAL
              SetDefaultVersion => 1,                      # OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          LicenseConfigurationArns => [ 'MyLicenseConfigurationArn', ... ]
          ,     # min: 1, max: 50; OPTIONAL
        },
        ...
      ],
      Description => 'MyNonEmptyString',    # OPTIONAL
      );

    # Results:
    my $ClientToken = $UpdateDistributionConfigurationResponse->ClientToken;
    my $DistributionConfigurationArn =
      $UpdateDistributionConfigurationResponse->DistributionConfigurationArn;
    my $RequestId = $UpdateDistributionConfigurationResponse->RequestId;

# Returns a L<Paws::ImageBuilder::UpdateDistributionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/UpdateDistributionConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The idempotency token of the distribution configuration.



=head2 Description => Str

The description of the distribution configuration.



=head2 B<REQUIRED> DistributionConfigurationArn => Str

The Amazon Resource Name (ARN) of the distribution configuration that
you want to update.



=head2 B<REQUIRED> Distributions => ArrayRef[L<Paws::ImageBuilder::Distribution>]

The distributions of the distribution configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDistributionConfiguration in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

