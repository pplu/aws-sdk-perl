
package Paws::QLDB::ExportJournalToS3;
  use Moose;
  has ExclusiveEndTime => (is => 'ro', isa => 'Str', required => 1);
  has InclusiveStartTime => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has S3ExportConfiguration => (is => 'ro', isa => 'Paws::QLDB::S3ExportConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportJournalToS3');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ledgers/{name}/journal-s3-exports');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QLDB::ExportJournalToS3Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ExportJournalToS3 - Arguments for method ExportJournalToS3 on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportJournalToS3 on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method ExportJournalToS3.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportJournalToS3.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $ExportJournalToS3Response = $qldb->ExportJournalToS3(
      ExclusiveEndTime      => '1970-01-01T01:00:00',
      InclusiveStartTime    => '1970-01-01T01:00:00',
      Name                  => 'MyLedgerName',
      RoleArn               => 'MyArn',
      S3ExportConfiguration => {
        Bucket                  => 'MyS3Bucket',    # min: 3, max: 255
        EncryptionConfiguration => {
          ObjectEncryptionType =>
            'SSE_KMS',    # values: SSE_KMS, SSE_S3, NO_ENCRYPTION
          KmsKeyArn => 'MyArn',    # min: 20, max: 1600
        },
        Prefix => 'MyS3Prefix',    # max: 128

      },

    );

    # Results:
    my $ExportId = $ExportJournalToS3Response->ExportId;

    # Returns a L<Paws::QLDB::ExportJournalToS3Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/ExportJournalToS3>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExclusiveEndTime => Str

The exclusive end date and time for the range of journal contents to
export.

The C<ExclusiveEndTime> must be in C<ISO 8601> date and time format and
in Universal Coordinated Time (UTC). For example:
C<2019-06-13T21:36:34Z>.

The C<ExclusiveEndTime> must be less than or equal to the current UTC
date and time.



=head2 B<REQUIRED> InclusiveStartTime => Str

The inclusive start date and time for the range of journal contents to
export.

The C<InclusiveStartTime> must be in C<ISO 8601> date and time format
and in Universal Coordinated Time (UTC). For example:
C<2019-06-13T21:36:34Z>.

The C<InclusiveStartTime> must be before C<ExclusiveEndTime>.

If you provide an C<InclusiveStartTime> that is before the ledger's
C<CreationDateTime>, Amazon QLDB defaults it to the ledger's
C<CreationDateTime>.



=head2 B<REQUIRED> Name => Str

The name of the ledger.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants QLDB
permissions for a journal export job to do the following:

=over

=item *

Write objects into your Amazon Simple Storage Service (Amazon S3)
bucket.

=item *

(Optional) Use your customer master key (CMK) in AWS Key Management
Service (AWS KMS) for server-side encryption of your exported data.

=back




=head2 B<REQUIRED> S3ExportConfiguration => L<Paws::QLDB::S3ExportConfiguration>

The configuration settings of the Amazon S3 bucket destination for your
export request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportJournalToS3 in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

