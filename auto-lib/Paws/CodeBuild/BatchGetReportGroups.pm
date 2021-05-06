
package Paws::CodeBuild::BatchGetReportGroups;
  use Moose;
  has ReportGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'reportGroupArns' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetReportGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::BatchGetReportGroupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetReportGroups - Arguments for method BatchGetReportGroups on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetReportGroups on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method BatchGetReportGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetReportGroups.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $BatchGetReportGroupsOutput = $codebuild->BatchGetReportGroups(
      ReportGroupArns => [
        'MyNonEmptyString', ...    # min: 1
      ],

    );

    # Results:
    my $ReportGroups = $BatchGetReportGroupsOutput->ReportGroups;
    my $ReportGroupsNotFound =
      $BatchGetReportGroupsOutput->ReportGroupsNotFound;

    # Returns a L<Paws::CodeBuild::BatchGetReportGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/BatchGetReportGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReportGroupArns => ArrayRef[Str|Undef]

An array of report group ARNs that identify the report groups to
return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetReportGroups in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

