
package Paws::CUR::ModifyReportDefinition;
  use Moose;
  has ReportDefinition => (is => 'ro', isa => 'Paws::CUR::ReportDefinition', required => 1);
  has ReportName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReportDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CUR::ModifyReportDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CUR::ModifyReportDefinition - Arguments for method ModifyReportDefinition on L<Paws::CUR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyReportDefinition on the
L<AWS Cost and Usage Report Service|Paws::CUR> service. Use the attributes of this class
as arguments to method ModifyReportDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyReportDefinition.

=head1 SYNOPSIS

    my $cur = Paws->service('CUR');
    my $ModifyReportDefinitionResponse = $cur->ModifyReportDefinition(
      ReportDefinition => {
        AdditionalSchemaElements => [
          'RESOURCES', ...    # values: RESOURCES
        ],
        Compression => 'ZIP',               # values: ZIP, GZIP, Parquet
        Format      => 'textORcsv',         # values: textORcsv, Parquet
        ReportName  => 'MyReportName',      # max: 256
        S3Bucket    => 'MyS3Bucket',        # max: 256
        S3Prefix    => 'MyS3Prefix',        # max: 256
        S3Region    => 'af-south-1'
        , # values: af-south-1, ap-east-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, ap-northeast-3, ca-central-1, eu-central-1, eu-west-1, eu-west-2, eu-west-3, eu-north-1, eu-south-1, me-south-1, sa-east-1, us-east-1, us-east-2, us-west-1, us-west-2, cn-north-1, cn-northwest-1
        TimeUnit            => 'HOURLY',    # values: HOURLY, DAILY, MONTHLY
        AdditionalArtifacts => [
          'REDSHIFT', ...    # values: REDSHIFT, QUICKSIGHT, ATHENA
        ],    # OPTIONAL
        BillingViewArn       => 'MyBillingViewArn',    # max: 128; OPTIONAL
        RefreshClosedReports => 1,                     # OPTIONAL
        ReportVersioning     => 'CREATE_NEW_REPORT'
        ,    # values: CREATE_NEW_REPORT, OVERWRITE_REPORT; OPTIONAL
      },
      ReportName => 'MyReportName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cur/ModifyReportDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReportDefinition => L<Paws::CUR::ReportDefinition>





=head2 B<REQUIRED> ReportName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyReportDefinition in L<Paws::CUR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

