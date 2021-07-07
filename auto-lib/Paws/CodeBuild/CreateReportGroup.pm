
package Paws::CodeBuild::CreateReportGroup;
  use Moose;
  has ExportConfig => (is => 'ro', isa => 'Paws::CodeBuild::ReportExportConfig', traits => ['NameInRequest'], request_name => 'exportConfig' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReportGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::CreateReportGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::CreateReportGroup - Arguments for method CreateReportGroup on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReportGroup on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method CreateReportGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReportGroup.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $CreateReportGroupOutput = $codebuild->CreateReportGroup(
      ExportConfig => {
        ExportConfigType => 'S3',    # values: S3, NO_EXPORT; OPTIONAL
        S3Destination    => {
          Bucket             => 'MyNonEmptyString',    # min: 1; OPTIONAL
          BucketOwner        => 'MyString',            # OPTIONAL
          EncryptionDisabled => 1,                     # OPTIONAL
          EncryptionKey      => 'MyNonEmptyString',    # min: 1; OPTIONAL
          Packaging          => 'ZIP',         # values: ZIP, NONE; OPTIONAL
          Path               => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },
      Name => 'MyReportGroupName',
      Type => 'TEST',
      Tags => [
        {
          Key   => 'MyKeyInput',      # min: 1, max: 127; OPTIONAL
          Value => 'MyValueInput',    # max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ReportGroup = $CreateReportGroupOutput->ReportGroup;

    # Returns a L<Paws::CodeBuild::CreateReportGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/CreateReportGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportConfig => L<Paws::CodeBuild::ReportExportConfig>

A C<ReportExportConfig> object that contains information about where
the report group test results are exported.



=head2 B<REQUIRED> Name => Str

The name of the report group.



=head2 Tags => ArrayRef[L<Paws::CodeBuild::Tag>]

A list of tag key and value pairs associated with this report group.

These tags are available for use by Amazon Web Services services that
support CodeBuild report group tags.



=head2 B<REQUIRED> Type => Str

The type of report group.

Valid values are: C<"TEST">, C<"CODE_COVERAGE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReportGroup in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

