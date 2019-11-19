# Generated from default/object.tt
package Paws::DMS::RedshiftSettings;
  use Moo;
  use Types::Standard qw/Bool Str Int/;
  use Paws::DMS::Types qw//;
  has AcceptAnyDate => (is => 'ro', isa => Bool);
  has AfterConnectScript => (is => 'ro', isa => Str);
  has BucketFolder => (is => 'ro', isa => Str);
  has BucketName => (is => 'ro', isa => Str);
  has ConnectionTimeout => (is => 'ro', isa => Int);
  has DatabaseName => (is => 'ro', isa => Str);
  has DateFormat => (is => 'ro', isa => Str);
  has EmptyAsNull => (is => 'ro', isa => Bool);
  has EncryptionMode => (is => 'ro', isa => Str);
  has FileTransferUploadStreams => (is => 'ro', isa => Int);
  has LoadTimeout => (is => 'ro', isa => Int);
  has MaxFileSize => (is => 'ro', isa => Int);
  has Password => (is => 'ro', isa => Str);
  has Port => (is => 'ro', isa => Int);
  has RemoveQuotes => (is => 'ro', isa => Bool);
  has ReplaceChars => (is => 'ro', isa => Str);
  has ReplaceInvalidChars => (is => 'ro', isa => Str);
  has ServerName => (is => 'ro', isa => Str);
  has ServerSideEncryptionKmsKeyId => (is => 'ro', isa => Str);
  has ServiceAccessRoleArn => (is => 'ro', isa => Str);
  has TimeFormat => (is => 'ro', isa => Str);
  has TrimBlanks => (is => 'ro', isa => Bool);
  has TruncateColumns => (is => 'ro', isa => Bool);
  has Username => (is => 'ro', isa => Str);
  has WriteBufferSize => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServerSideEncryptionKmsKeyId' => {
                                                   'type' => 'Str'
                                                 },
               'WriteBufferSize' => {
                                      'type' => 'Int'
                                    },
               'AfterConnectScript' => {
                                         'type' => 'Str'
                                       },
               'TrimBlanks' => {
                                 'type' => 'Bool'
                               },
               'FileTransferUploadStreams' => {
                                                'type' => 'Int'
                                              },
               'Username' => {
                               'type' => 'Str'
                             },
               'DateFormat' => {
                                 'type' => 'Str'
                               },
               'MaxFileSize' => {
                                  'type' => 'Int'
                                },
               'Password' => {
                               'type' => 'Str'
                             },
               'EmptyAsNull' => {
                                  'type' => 'Bool'
                                },
               'RemoveQuotes' => {
                                   'type' => 'Bool'
                                 },
               'ConnectionTimeout' => {
                                        'type' => 'Int'
                                      },
               'TimeFormat' => {
                                 'type' => 'Str'
                               },
               'ServerName' => {
                                 'type' => 'Str'
                               },
               'DatabaseName' => {
                                   'type' => 'Str'
                                 },
               'ReplaceInvalidChars' => {
                                          'type' => 'Str'
                                        },
               'LoadTimeout' => {
                                  'type' => 'Int'
                                },
               'ReplaceChars' => {
                                   'type' => 'Str'
                                 },
               'Port' => {
                           'type' => 'Int'
                         },
               'BucketName' => {
                                 'type' => 'Str'
                               },
               'EncryptionMode' => {
                                     'type' => 'Str'
                                   },
               'TruncateColumns' => {
                                      'type' => 'Bool'
                                    },
               'BucketFolder' => {
                                   'type' => 'Str'
                                 },
               'ServiceAccessRoleArn' => {
                                           'type' => 'Str'
                                         },
               'AcceptAnyDate' => {
                                    'type' => 'Bool'
                                  }
             }
}
;
    return $Params_map;
  }


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

  A value that indicates to allow any date format, including invalid
formats such as 00/00/00 00:00:00, to be loaded without generating an
error. You can choose C<true> or C<false> (the default).

This parameter applies only to TIMESTAMP and DATE columns. Always use
ACCEPTANYDATE with the DATEFORMAT parameter. If the date format for the
data doesn't match the DATEFORMAT specification, Amazon Redshift
inserts a NULL value into that field.


=head2 AfterConnectScript => Str

  Code to run after connecting. This parameter should contain the code
itself, not the name of a file containing the code.


=head2 BucketFolder => Str

  The location where the comma-separated value (.csv) files are stored
before being uploaded to the S3 bucket.


=head2 BucketName => Str

  The name of the S3 bucket you want to use


=head2 ConnectionTimeout => Int

  A value that sets the amount of time to wait (in milliseconds) before
timing out, beginning from when you initially establish a connection.


=head2 DatabaseName => Str

  The name of the Amazon Redshift data warehouse (service) that you are
working with.


=head2 DateFormat => Str

  The date format that you are using. Valid values are C<auto>
(case-sensitive), your date format string enclosed in quotes, or NULL.
If this parameter is left unset (NULL), it defaults to a format of
'YYYY-MM-DD'. Using C<auto> recognizes most strings, even some that
aren't supported when you use a date format string.

If your date and time values use formats different from each other, set
this to C<auto>.


=head2 EmptyAsNull => Bool

  A value that specifies whether AWS DMS should migrate empty CHAR and
VARCHAR fields as NULL. A value of C<true> sets empty CHAR and VARCHAR
fields to null. The default is C<false>.


=head2 EncryptionMode => Str

  The type of server-side encryption that you want to use for your data.
This encryption type is part of the endpoint settings or the extra
connections attributes for Amazon S3. You can choose either C<SSE_S3>
(the default) or C<SSE_KMS>. To use C<SSE_S3>, create an AWS Identity
and Access Management (IAM) role with a policy that allows
C<"arn:aws:s3:::*"> to use the following actions: C<"s3:PutObject",
"s3:ListBucket">


=head2 FileTransferUploadStreams => Int

  The number of threads used to upload a single file. This parameter
accepts a value from 1 through 64. It defaults to 10.


=head2 LoadTimeout => Int

  The amount of time to wait (in milliseconds) before timing out,
beginning from when you begin loading.


=head2 MaxFileSize => Int

  The maximum size (in KB) of any .csv file used to transfer data to
Amazon Redshift. This accepts a value from 1 through 1,048,576. It
defaults to 32,768 KB (32 MB).


=head2 Password => Str

  The password for the user named in the C<username> property.


=head2 Port => Int

  The port number for Amazon Redshift. The default value is 5439.


=head2 RemoveQuotes => Bool

  A value that specifies to remove surrounding quotation marks from
strings in the incoming data. All characters within the quotation
marks, including delimiters, are retained. Choose C<true> to remove
quotation marks. The default is C<false>.


=head2 ReplaceChars => Str

  A value that specifies to replaces the invalid characters specified in
C<ReplaceInvalidChars>, substituting the specified characters instead.
The default is C<"?">.


=head2 ReplaceInvalidChars => Str

  A list of characters that you want to replace. Use with
C<ReplaceChars>.


=head2 ServerName => Str

  The name of the Amazon Redshift cluster you are using.


=head2 ServerSideEncryptionKmsKeyId => Str

  The AWS KMS key ID. If you are using C<SSE_KMS> for the
C<EncryptionMode>, provide this key ID. The key that you use needs an
attached policy that enables IAM user permissions and allows use of the
key.


=head2 ServiceAccessRoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role that has access to the
Amazon Redshift service.


=head2 TimeFormat => Str

  The time format that you want to use. Valid values are C<auto>
(case-sensitive), C<'timeformat_string'>, C<'epochsecs'>, or
C<'epochmillisecs'>. It defaults to 10. Using C<auto> recognizes most
strings, even some that aren't supported when you use a time format
string.

If your date and time values use formats different from each other, set
this parameter to C<auto>.


=head2 TrimBlanks => Bool

  A value that specifies to remove the trailing white space characters
from a VARCHAR string. This parameter applies only to columns with a
VARCHAR data type. Choose C<true> to remove unneeded white space. The
default is C<false>.


=head2 TruncateColumns => Bool

  A value that specifies to truncate data in columns to the appropriate
number of characters, so that the data fits in the column. This
parameter applies only to columns with a VARCHAR or CHAR data type, and
rows with a size of 4 MB or less. Choose C<true> to truncate data. The
default is C<false>.


=head2 Username => Str

  An Amazon Redshift user name for a registered user.


=head2 WriteBufferSize => Int

  The size of the write buffer to use in rows. Valid values range from 1
through 2,048. The default is 1,024. Use this setting to tune
performance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

