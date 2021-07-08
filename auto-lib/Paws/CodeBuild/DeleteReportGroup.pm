
package Paws::CodeBuild::DeleteReportGroup;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has DeleteReports => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deleteReports' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReportGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::DeleteReportGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::DeleteReportGroup - Arguments for method DeleteReportGroup on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteReportGroup on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method DeleteReportGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteReportGroup.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $DeleteReportGroupOutput = $codebuild->DeleteReportGroup(
      Arn           => 'MyNonEmptyString',
      DeleteReports => 1,                    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/DeleteReportGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the report group to delete.



=head2 DeleteReports => Bool

If C<true>, deletes any reports that belong to a report group before
deleting the report group.

If C<false>, you must delete any reports in the report group. Use
ListReportsForReportGroup
(https://docs.aws.amazon.com/codebuild/latest/APIReference/API_ListReportsForReportGroup.html)
to get the reports in a report group. Use DeleteReport
(https://docs.aws.amazon.com/codebuild/latest/APIReference/API_DeleteReport.html)
to delete the reports. If you call C<DeleteReportGroup> for a report
group that contains one or more reports, an exception is thrown.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteReportGroup in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

