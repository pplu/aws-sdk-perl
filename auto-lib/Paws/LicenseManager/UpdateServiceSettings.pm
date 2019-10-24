# Generated from json/callargs_class.tt

package Paws::LicenseManager::UpdateServiceSettings;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::LicenseManager::Types qw/LicenseManager_OrganizationConfiguration/;
  has EnableCrossAccountsDiscovery => (is => 'ro', isa => Bool, predicate => 1);
  has OrganizationConfiguration => (is => 'ro', isa => LicenseManager_OrganizationConfiguration, predicate => 1);
  has S3BucketArn => (is => 'ro', isa => Str, predicate => 1);
  has SnsTopicArn => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateServiceSettings');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::LicenseManager::UpdateServiceSettingsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrganizationConfiguration' => {
                                                'class' => 'Paws::LicenseManager::OrganizationConfiguration',
                                                'type' => 'LicenseManager_OrganizationConfiguration'
                                              },
               'S3BucketArn' => {
                                  'type' => 'Str'
                                },
               'SnsTopicArn' => {
                                  'type' => 'Str'
                                },
               'EnableCrossAccountsDiscovery' => {
                                                   'type' => 'Bool'
                                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::UpdateServiceSettings - Arguments for method UpdateServiceSettings on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServiceSettings on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method UpdateServiceSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServiceSettings.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $UpdateServiceSettingsResponse =
      $license -manager->UpdateServiceSettings(
      EnableCrossAccountsDiscovery => 1,    # OPTIONAL
      OrganizationConfiguration    => {
        EnableIntegration => 1,

      },                                    # OPTIONAL
      S3BucketArn => 'MyString',            # OPTIONAL
      SnsTopicArn => 'MyString',            # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/UpdateServiceSettings>

=head1 ATTRIBUTES


=head2 EnableCrossAccountsDiscovery => Bool

Activates cross-account discovery.



=head2 OrganizationConfiguration => LicenseManager_OrganizationConfiguration

Integrates AWS Organizations with License Manager for cross-account
discovery.



=head2 S3BucketArn => Str

ARN of the Amazon S3 bucket where License Manager information is
stored.



=head2 SnsTopicArn => Str

ARN of the Amazon SNS topic used for License Manager alerts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServiceSettings in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

