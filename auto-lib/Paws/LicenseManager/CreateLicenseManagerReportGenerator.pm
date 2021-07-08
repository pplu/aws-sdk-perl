
package Paws::LicenseManager::CreateLicenseManagerReportGenerator;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has ReportContext => (is => 'ro', isa => 'Paws::LicenseManager::ReportContext', required => 1);
  has ReportFrequency => (is => 'ro', isa => 'Paws::LicenseManager::ReportFrequency', required => 1);
  has ReportGeneratorName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Tag]');
  has Type => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLicenseManagerReportGenerator');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::CreateLicenseManagerReportGeneratorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateLicenseManagerReportGenerator - Arguments for method CreateLicenseManagerReportGenerator on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLicenseManagerReportGenerator on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method CreateLicenseManagerReportGenerator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLicenseManagerReportGenerator.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $CreateLicenseManagerReportGeneratorResponse =
      $license -manager->CreateLicenseManagerReportGenerator(
      ClientToken   => 'MyClientRequestToken',
      ReportContext => {
        LicenseConfigurationArns => [
          'MyArn', ...    # max: 2048
        ],

      },
      ReportFrequency => {
        Period => 'DAY',    # values: DAY, WEEK, MONTH; OPTIONAL
        Value  => 1,        # OPTIONAL
      },
      ReportGeneratorName => 'MyReportGeneratorName',
      Type                => [
        'LicenseConfigurationSummaryReport',
        ... # values: LicenseConfigurationSummaryReport, LicenseConfigurationUsageReport
      ],
      Description => 'MyString',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                            # OPTIONAL
      );

    # Results:
    my $LicenseManagerReportGeneratorArn =
      $CreateLicenseManagerReportGeneratorResponse
      ->LicenseManagerReportGeneratorArn;

# Returns a L<Paws::LicenseManager::CreateLicenseManagerReportGeneratorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/CreateLicenseManagerReportGenerator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 Description => Str

Description of the report generator.



=head2 B<REQUIRED> ReportContext => L<Paws::LicenseManager::ReportContext>

Defines the type of license configuration the report generator tracks.



=head2 B<REQUIRED> ReportFrequency => L<Paws::LicenseManager::ReportFrequency>

Frequency by which reports are generated. Reports can be generated
daily, monthly, or weekly.



=head2 B<REQUIRED> ReportGeneratorName => Str

Name of the report generator.



=head2 Tags => ArrayRef[L<Paws::LicenseManager::Tag>]

Tags to add to the report generator.



=head2 B<REQUIRED> Type => ArrayRef[Str|Undef]

Type of reports to generate. The following report types an be
generated:

=over

=item *

License configuration report - Reports on the number and details of
consumed licenses for a license configuration.

=item *

Resource report - Reports on the tracked licenses and resource
consumption for a license configuration.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLicenseManagerReportGenerator in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

