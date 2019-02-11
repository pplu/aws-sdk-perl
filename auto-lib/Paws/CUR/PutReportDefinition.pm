
package Paws::CUR::PutReportDefinition;
  use Moose;
  has ReportDefinition => (is => 'ro', isa => 'Paws::CUR::ReportDefinition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutReportDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CUR::PutReportDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CUR::PutReportDefinition - Arguments for method PutReportDefinition on L<Paws::CUR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutReportDefinition on the
L<AWS Cost and Usage Report Service|Paws::CUR> service. Use the attributes of this class
as arguments to method PutReportDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutReportDefinition.

=head1 SYNOPSIS

    my $cur = Paws->service('CUR');
    my $PutReportDefinitionResponse = $cur->PutReportDefinition(
      ReportDefinition => {
        AdditionalSchemaElements => [
          'RESOURCES', ...    # values: RESOURCES
        ],
        Compression => 'ZIP',             # values: ZIP, GZIP
        Format      => 'textORcsv',       # values: textORcsv
        ReportName  => 'MyReportName',    # max: 256
        S3Bucket    => 'MyS3Bucket',      # max: 256
        S3Prefix    => 'MyS3Prefix',      # max: 256
        S3Region    => 'us-east-1'
        , # values: us-east-1, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1
        TimeUnit            => 'HOURLY',    # values: HOURLY, DAILY
        AdditionalArtifacts => [
          'REDSHIFT', ...                   # values: REDSHIFT, QUICKSIGHT
        ],                                  # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cur/PutReportDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReportDefinition => L<Paws::CUR::ReportDefinition>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutReportDefinition in L<Paws::CUR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

