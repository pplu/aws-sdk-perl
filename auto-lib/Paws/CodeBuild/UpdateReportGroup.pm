
package Paws::CodeBuild::UpdateReportGroup;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has ExportConfig => (is => 'ro', isa => 'Paws::CodeBuild::ReportExportConfig', traits => ['NameInRequest'], request_name => 'exportConfig' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateReportGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::UpdateReportGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::UpdateReportGroup - Arguments for method UpdateReportGroup on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReportGroup on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method UpdateReportGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReportGroup.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $UpdateReportGroupOutput = $codebuild->UpdateReportGroup(
      Arn          => 'MyNonEmptyString',
      ExportConfig => {
        ExportConfigType => 'S3',    # values: S3, NO_EXPORT; OPTIONAL
        S3Destination    => {
          Bucket             => 'MyNonEmptyString',    # min: 1
          BucketOwner        => 'MyString',            # OPTIONAL
          EncryptionDisabled => 1,                     # OPTIONAL
          EncryptionKey      => 'MyNonEmptyString',    # min: 1
          Packaging          => 'ZIP',         # values: ZIP, NONE; OPTIONAL
          Path               => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyKeyInput',      # min: 1, max: 127; OPTIONAL
          Value => 'MyValueInput',    # max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ReportGroup = $UpdateReportGroupOutput->ReportGroup;

    # Returns a L<Paws::CodeBuild::UpdateReportGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/UpdateReportGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the report group to update.



=head2 ExportConfig => L<Paws::CodeBuild::ReportExportConfig>

Used to specify an updated export type. Valid values are:

=over

=item *

C<S3>: The report results are exported to an S3 bucket.

=item *

C<NO_EXPORT>: The report results are not exported.

=back




=head2 Tags => ArrayRef[L<Paws::CodeBuild::Tag>]

An updated list of tag key and value pairs associated with this report
group.

These tags are available for use by AWS services that support AWS
CodeBuild report group tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReportGroup in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

