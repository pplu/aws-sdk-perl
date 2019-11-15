package Paws::QLDB::JournalS3ExportDescription;
  use Moose;
  has ExclusiveEndTime => (is => 'ro', isa => 'Str', required => 1);
  has ExportCreationTime => (is => 'ro', isa => 'Str', required => 1);
  has ExportId => (is => 'ro', isa => 'Str', required => 1);
  has InclusiveStartTime => (is => 'ro', isa => 'Str', required => 1);
  has LedgerName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has S3ExportConfiguration => (is => 'ro', isa => 'Paws::QLDB::S3ExportConfiguration', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::JournalS3ExportDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDB::JournalS3ExportDescription object:

  $service_obj->Method(Att1 => { ExclusiveEndTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDB::JournalS3ExportDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ExclusiveEndTime

=head1 DESCRIPTION

The information about a journal export job, including the ledger name,
export ID, when it was created, current status, and its start and end
time export parameters.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExclusiveEndTime => Str

  The exclusive end date and time for the range of journal contents that
are specified in the original export request.


=head2 B<REQUIRED> ExportCreationTime => Str

  The date and time, in epoch time format, when the export job was
created. (Epoch time format is the number of seconds elapsed since
12:00:00 AM January 1, 1970 UTC.)


=head2 B<REQUIRED> ExportId => Str

  The unique ID of the journal export job.


=head2 B<REQUIRED> InclusiveStartTime => Str

  The inclusive start date and time for the range of journal contents
that are specified in the original export request.


=head2 B<REQUIRED> LedgerName => Str

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

  


=head2 B<REQUIRED> Status => Str

  The current state of the journal export job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

