package Paws::DMS::RedshiftSettings;
  use Moose;
  has AcceptAnyDate => (is => 'ro', isa => 'Bool');
  has AfterConnectScript => (is => 'ro', isa => 'Str');
  has BucketFolder => (is => 'ro', isa => 'Str');
  has BucketName => (is => 'ro', isa => 'Str');
  has ConnectionTimeout => (is => 'ro', isa => 'Int');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DateFormat => (is => 'ro', isa => 'Str');
  has EmptyAsNull => (is => 'ro', isa => 'Bool');
  has EncryptionMode => (is => 'ro', isa => 'Str');
  has FileTransferUploadStreams => (is => 'ro', isa => 'Int');
  has LoadTimeout => (is => 'ro', isa => 'Int');
  has MaxFileSize => (is => 'ro', isa => 'Int');
  has Password => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has RemoveQuotes => (is => 'ro', isa => 'Bool');
  has ReplaceChars => (is => 'ro', isa => 'Str');
  has ReplaceInvalidChars => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str');
  has ServerSideEncryptionKmsKeyId => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str');
  has TimeFormat => (is => 'ro', isa => 'Str');
  has TrimBlanks => (is => 'ro', isa => 'Bool');
  has TruncateColumns => (is => 'ro', isa => 'Bool');
  has Username => (is => 'ro', isa => 'Str');
  has WriteBufferSize => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::RedshiftSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::RedshiftSettings object:

  $service_obj->Method(Att1 => { AcceptAnyDate => $value, ..., WriteBufferSize => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::RedshiftSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AcceptAnyDate

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AcceptAnyDate => Bool

  Allows any date format, including invalid formats such as 00/00/00
00:00:00, to be loaded without generating an error. You can choose TRUE
or FALSE (default).

This parameter applies only to TIMESTAMP and DATE columns. Always use
ACCEPTANYDATE with the DATEFORMAT parameter. If the date format for the
data does not match the DATEFORMAT specification, Amazon Redshift
inserts a NULL value into that field.


=head2 AfterConnectScript => Str

  Code to run after connecting. This should be the code, not a filename.


=head2 BucketFolder => Str

  The location where the CSV files are stored before being uploaded to
the S3 bucket.


=head2 BucketName => Str

  The name of the S3 bucket you want to use


=head2 ConnectionTimeout => Int

  Sets the amount of time to wait (in milliseconds) before timing out,
beginning from when you initially establish a connection.


=head2 DatabaseName => Str

  The name of the Amazon Redshift data warehouse (service) you are
working with.


=head2 DateFormat => Str

  The date format you are using. Valid values are C<auto>
(case-sensitive), your date format string enclosed in quotes, or NULL.
If this is left unset (NULL), it defaults to a format of 'YYYY-MM-DD'.
Using C<auto> recognizes most strings, even some that are not supported
when you use a date format string.

If your date and time values use formats different from each other, set
this to C<auto>.


=head2 EmptyAsNull => Bool

  Specifies whether AWS DMS should migrate empty CHAR and VARCHAR fields
as NULL. A value of TRUE sets empty CHAR and VARCHAR fields to null.
The default is FALSE.


=head2 EncryptionMode => Str

  The type of server side encryption you want to use for your data. This
is part of the endpoint settings or the extra connections attributes
for Amazon S3. You can choose either SSE_S3 (default) or SSE_KMS. To
use SSE_S3, create an IAM role with a policy that allows
C<"arn:aws:s3:::*"> to use the following actions: C<"s3:PutObject",
"s3:ListBucket">.


=head2 FileTransferUploadStreams => Int

  Specifies the number of threads used to upload a single file. This
accepts a value between 1 and 64. It defaults to 10.


=head2 LoadTimeout => Int

  Sets the amount of time to wait (in milliseconds) before timing out,
beginning from when you begin loading.


=head2 MaxFileSize => Int

  Specifies the maximum size (in KB) of any CSV file used to transfer
data to Amazon Redshift. This accepts a value between 1 and 1048576. It
defaults to 32768 KB (32 MB).


=head2 Password => Str

  The password for the user named in the username property.


=head2 Port => Int

  The port number for Amazon Redshift. The default value is 5439.


=head2 RemoveQuotes => Bool

  Removes surrounding quotation marks from strings in the incoming data.
All characters within the quotation marks, including delimiters, are
retained. Choose TRUE to remove quotation marks. The default is FALSE.


=head2 ReplaceChars => Str

  Replaces invalid characters specified in C<ReplaceInvalidChars>,
substituting the specified value instead. The default is "?".


=head2 ReplaceInvalidChars => Str

  A list of chars you want to replace. Use with C<ReplaceChars>.


=head2 ServerName => Str

  The name of the Amazon Redshift cluster you are using.


=head2 ServerSideEncryptionKmsKeyId => Str

  If you are using SSE_KMS for the C<EncryptionMode>, provide the KMS Key
ID. The key you use needs an attached policy that enables IAM user
permissions and allows use of the key.


=head2 ServiceAccessRoleArn => Str

  The ARN of the role that has access to the Redshift service.


=head2 TimeFormat => Str

  The time format you want to use. Valid values are C<auto>
(case-sensitive), 'timeformat_string', 'epochsecs', or
'epochmillisecs'. It defaults to 10. Using C<auto> recognizes most
strings, even some that are not supported when you use a time format
string.

If your date and time values use formats different from each other, set
this to C<auto>.


=head2 TrimBlanks => Bool

  Removes the trailing white space characters from a VARCHAR string. This
parameter applies only to columns with a VARCHAR data type. Choose TRUE
to remove unneeded white space. The default is FALSE.


=head2 TruncateColumns => Bool

  Truncates data in columns to the appropriate number of characters, so
that it fits in the column. Applies only to columns with a VARCHAR or
CHAR data type, and rows with a size of 4 MB or less. Choose TRUE to
truncate data. The default is FALSE.


=head2 Username => Str

  An Amazon Redshift user name for a registered user.


=head2 WriteBufferSize => Int

  The size of the write buffer to use in rows. Valid values range from 1
to 2048. Defaults to 1024. Use this setting to tune performance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

