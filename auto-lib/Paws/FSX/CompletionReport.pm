package Paws::FSX::CompletionReport;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Format => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
  has Scope => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CompletionReport

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::CompletionReport object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., Scope => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::CompletionReport object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Provides a report detailing the data repository task results of the
files processed that match the criteria specified in the report
C<Scope> parameter. FSx delivers the report to the file system's linked
data repository in Amazon S3, using the path specified in the report
C<Path> parameter. You can specify whether or not a report gets
generated for a task using the C<Enabled> parameter.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

  Set C<Enabled> to C<True> to generate a C<CompletionReport> when the
task completes. If set to C<true>, then you need to provide a report
C<Scope>, C<Path>, and C<Format>. Set C<Enabled> to C<False> if you do
not want a C<CompletionReport> generated when the task completes.


=head2 Format => Str

  Required if C<Enabled> is set to C<true>. Specifies the format of the
C<CompletionReport>. C<REPORT_CSV_20191124> is the only format
currently supported. When C<Format> is set to C<REPORT_CSV_20191124>,
the C<CompletionReport> is provided in CSV format, and is delivered to
C<{path}/task-{id}/failures.csv>.


=head2 Path => Str

  Required if C<Enabled> is set to C<true>. Specifies the location of the
report on the file system's linked S3 data repository. An absolute path
that defines where the completion report will be stored in the
destination location. The C<Path> you provide must be located within
the file systemE<rsquo>s ExportPath. An example C<Path> value is
"s3://myBucket/myExportPath/optionalPrefix". The report provides the
following information for each file in the report: FilePath,
FileStatus, and ErrorCode. To learn more about a file system's
C<ExportPath>, see .


=head2 Scope => Str

  Required if C<Enabled> is set to C<true>. Specifies the scope of the
C<CompletionReport>; C<FAILED_FILES_ONLY> is the only scope currently
supported. When C<Scope> is set to C<FAILED_FILES_ONLY>, the
C<CompletionReport> only contains information about files that the data
repository task failed to process.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

