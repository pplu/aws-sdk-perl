package Paws::QLDB::S3ExportConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::QLDB::S3EncryptionConfiguration', required => 1);
  has Prefix => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::S3ExportConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDB::S3ExportConfiguration object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDB::S3ExportConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

The Amazon Simple Storage Service (Amazon S3) bucket location in which
a journal export job writes the journal contents.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

  The Amazon S3 bucket name in which a journal export job writes the
journal contents.

The bucket name must comply with the Amazon S3 bucket naming
conventions. For more information, see Bucket Restrictions and
Limitations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html)
in the I<Amazon S3 Developer Guide>.


=head2 B<REQUIRED> EncryptionConfiguration => L<Paws::QLDB::S3EncryptionConfiguration>

  The encryption settings that are used by a journal export job to write
data in an Amazon S3 bucket.


=head2 B<REQUIRED> Prefix => Str

  The prefix for the Amazon S3 bucket in which a journal export job
writes the journal contents.

The prefix must comply with Amazon S3 key naming rules and
restrictions. For more information, see Object Key and Metadata
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html) in
the I<Amazon S3 Developer Guide>.

The following are examples of valid C<Prefix> values:

=over

=item *

C<JournalExports-ForMyLedger/Testing/>

=item *

C<JournalExports>

=item *

C<My:Tests/>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

