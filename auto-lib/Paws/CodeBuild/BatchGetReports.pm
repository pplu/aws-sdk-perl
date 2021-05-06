
package Paws::CodeBuild::BatchGetReports;
  use Moose;
  has ReportArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'reportArns' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetReports');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::BatchGetReportsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetReports - Arguments for method BatchGetReports on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetReports on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method BatchGetReports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetReports.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $BatchGetReportsOutput = $codebuild->BatchGetReports(
      ReportArns => [
        'MyNonEmptyString', ...    # min: 1
      ],

    );

    # Results:
    my $Reports         = $BatchGetReportsOutput->Reports;
    my $ReportsNotFound = $BatchGetReportsOutput->ReportsNotFound;

    # Returns a L<Paws::CodeBuild::BatchGetReportsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/BatchGetReports>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReportArns => ArrayRef[Str|Undef]

An array of ARNs that identify the C<Report> objects to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetReports in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

