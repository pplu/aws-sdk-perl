
package Paws::FSX::CreateDataRepositoryTask;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has Paths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Report => (is => 'ro', isa => 'Paws::FSX::CompletionReport', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataRepositoryTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CreateDataRepositoryTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateDataRepositoryTask - Arguments for method CreateDataRepositoryTask on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataRepositoryTask on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CreateDataRepositoryTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataRepositoryTask.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $CreateDataRepositoryTaskResponse = $fsx->CreateDataRepositoryTask(
      FileSystemId => 'MyFileSystemId',
      Report       => {
        Enabled => 1,
        Format => 'REPORT_CSV_20191124', # values: REPORT_CSV_20191124; OPTIONAL
        Path   => 'MyArchivePath',       # min: 3, max: 900; OPTIONAL
        Scope  => 'FAILED_FILES_ONLY',   # values: FAILED_FILES_ONLY; OPTIONAL
      },
      Type               => 'EXPORT_TO_REPOSITORY',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Paths              => [
        'MyDataRepositoryTaskPath', ...                # max: 4096
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DataRepositoryTask =
      $CreateDataRepositoryTaskResponse->DataRepositoryTask;

    # Returns a L<Paws::FSX::CreateDataRepositoryTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CreateDataRepositoryTask>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 B<REQUIRED> FileSystemId => Str





=head2 Paths => ArrayRef[Str|Undef]

(Optional) The path or paths on the Amazon FSx file system to use when
the data repository task is processed. The default path is the file
system root directory.



=head2 B<REQUIRED> Report => L<Paws::FSX::CompletionReport>

Defines whether or not Amazon FSx provides a CompletionReport once the
task has completed. A CompletionReport provides a detailed report on
the files that Amazon FSx processed that meet the criteria specified by
the C<Scope> parameter.



=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]





=head2 B<REQUIRED> Type => Str

Specifies the type of data repository task to create.

Valid values are: C<"EXPORT_TO_REPOSITORY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataRepositoryTask in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

