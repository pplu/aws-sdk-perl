package Paws::S3::Error;
  use Moose;
  has Code => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Error

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Error object:

  $service_obj->Method(Att1 => { Code => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Error object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Container for all error elements.

=head1 ATTRIBUTES


=head2 Code => Str

  The error code is a string that uniquely identifies an error condition.
It is meant to be read and understood by programs that detect and
handle errors by type.

B<Amazon S3 error codes>

=over

=item *

=over

=item *

I<Code:> AccessDenied

=item *

I<Description:> Access Denied

=item *

I<HTTP Status Code:> 403 Forbidden

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> AccountProblem

=item *

I<Description:> There is a problem with your AWS account that prevents
the operation from completing successfully. Contact AWS Support for
further assistance.

=item *

I<HTTP Status Code:> 403 Forbidden

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> AllAccessDisabled

=item *

I<Description:> All access to this Amazon S3 resource has been
disabled. Contact AWS Support for further assistance.

=item *

I<HTTP Status Code:> 403 Forbidden

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> AmbiguousGrantByEmailAddress

=item *

I<Description:> The email address you provided is associated with more
than one account.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> AuthorizationHeaderMalformed

=item *

I<Description:> The authorization header you provided is invalid.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<HTTP Status Code:> N/A

=back

=item *

=over

=item *

I<Code:> BadDigest

=item *

I<Description:> The Content-MD5 you specified did not match what we
received.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> BucketAlreadyExists

=item *

I<Description:> The requested bucket name is not available. The bucket
namespace is shared by all users of the system. Please select a
different name and try again.

=item *

I<HTTP Status Code:> 409 Conflict

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> BucketAlreadyOwnedByYou

=item *

I<Description:> The bucket you tried to create already exists, and you
own it. Amazon S3 returns this error in all AWS Regions except in the
North Virginia region. For legacy compatibility, if you re-create an
existing bucket that you already own in the North Virginia region,
Amazon S3 returns 200 OK and resets the bucket access control lists
(ACLs).

=item *

I<Code:> 409 Conflict (in all regions except the North Virginia region)

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> BucketNotEmpty

=item *

I<Description:> The bucket you tried to delete is not empty.

=item *

I<HTTP Status Code:> 409 Conflict

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> CredentialsNotSupported

=item *

I<Description:> This request does not support credentials.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> CrossLocationLoggingProhibited

=item *

I<Description:> Cross-location logging not allowed. Buckets in one
geographic location cannot log information to a bucket in another
location.

=item *

I<HTTP Status Code:> 403 Forbidden

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> EntityTooSmall

=item *

I<Description:> Your proposed upload is smaller than the minimum
allowed object size.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> EntityTooLarge

=item *

I<Description:> Your proposed upload exceeds the maximum allowed object
size.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> ExpiredToken

=item *

I<Description:> The provided token has expired.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> IllegalVersioningConfigurationException

=item *

I<Description:> Indicates that the versioning configuration specified
in the request is invalid.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> IncompleteBody

=item *

I<Description:> You did not provide the number of bytes specified by
the Content-Length HTTP header

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> IncorrectNumberOfFilesInPostRequest

=item *

I<Description:> POST requires exactly one file upload per request.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InlineDataTooLarge

=item *

I<Description:> Inline data exceeds the maximum allowed size.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InternalError

=item *

I<Description:> We encountered an internal error. Please try again.

=item *

I<HTTP Status Code:> 500 Internal Server Error

=item *

I<SOAP Fault Code Prefix:> Server

=back

=item *

=over

=item *

I<Code:> InvalidAccessKeyId

=item *

I<Description:> The AWS access key ID you provided does not exist in
our records.

=item *

I<HTTP Status Code:> 403 Forbidden

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidAddressingHeader

=item *

I<Description:> You must specify the Anonymous role.

=item *

I<HTTP Status Code:> N/A

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidArgument

=item *

I<Description:> Invalid Argument

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidBucketName

=item *

I<Description:> The specified bucket is not valid.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidBucketState

=item *

I<Description:> The request is not valid with the current state of the
bucket.

=item *

I<HTTP Status Code:> 409 Conflict

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidDigest

=item *

I<Description:> The Content-MD5 you specified is not valid.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidEncryptionAlgorithmError

=item *

I<Description:> The encryption request you specified is not valid. The
valid value is AES256.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidLocationConstraint

=item *

I<Description:> The specified location constraint is not valid. For
more information about Regions, see How to Select a Region for Your
Buckets
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro).

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidObjectState

=item *

I<Description:> The operation is not valid for the current state of the
object.

=item *

I<HTTP Status Code:> 403 Forbidden

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidPart

=item *

I<Description:> One or more of the specified parts could not be found.
The part might not have been uploaded, or the specified entity tag
might not have matched the part's entity tag.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidPartOrder

=item *

I<Description:> The list of parts was not in ascending order. Parts
list must be specified in order by part number.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidPayer

=item *

I<Description:> All access to this object has been disabled. Please
contact AWS Support for further assistance.

=item *

I<HTTP Status Code:> 403 Forbidden

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidPolicyDocument

=item *

I<Description:> The content of the form does not meet the conditions
specified in the policy document.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidRange

=item *

I<Description:> The requested range cannot be satisfied.

=item *

I<HTTP Status Code:> 416 Requested Range Not Satisfiable

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidRequest

=item *

I<Description:> Please use AWS4-HMAC-SHA256.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<Code:> N/A

=back

=item *

=over

=item *

I<Code:> InvalidRequest

=item *

I<Description:> SOAP requests must be made over an HTTPS connection.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidRequest

=item *

I<Description:> Amazon S3 Transfer Acceleration is not supported for
buckets with non-DNS compliant names.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<Code:> N/A

=back

=item *

=over

=item *

I<Code:> InvalidRequest

=item *

I<Description:> Amazon S3 Transfer Acceleration is not supported for
buckets with periods (.) in their names.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<Code:> N/A

=back

=item *

=over

=item *

I<Code:> InvalidRequest

=item *

I<Description:> Amazon S3 Transfer Accelerate endpoint only supports
virtual style requests.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<Code:> N/A

=back

=item *

=over

=item *

I<Code:> InvalidRequest

=item *

I<Description:> Amazon S3 Transfer Accelerate is not configured on this
bucket.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<Code:> N/A

=back

=item *

=over

=item *

I<Code:> InvalidRequest

=item *

I<Description:> Amazon S3 Transfer Accelerate is disabled on this
bucket.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<Code:> N/A

=back

=item *

=over

=item *

I<Code:> InvalidRequest

=item *

I<Description:> Amazon S3 Transfer Acceleration is not supported on
this bucket. Contact AWS Support for more information.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<Code:> N/A

=back

=item *

=over

=item *

I<Code:> InvalidRequest

=item *

I<Description:> Amazon S3 Transfer Acceleration cannot be enabled on
this bucket. Contact AWS Support for more information.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<Code:> N/A

=back

=item *

=over

=item *

I<Code:> InvalidSecurity

=item *

I<Description:> The provided security credentials are not valid.

=item *

I<HTTP Status Code:> 403 Forbidden

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidSOAPRequest

=item *

I<Description:> The SOAP request body is invalid.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidStorageClass

=item *

I<Description:> The storage class you specified is not valid.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidTargetBucketForLogging

=item *

I<Description:> The target bucket for logging does not exist, is not
owned by you, or does not have the appropriate grants for the
log-delivery group.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidToken

=item *

I<Description:> The provided token is malformed or otherwise invalid.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> InvalidURI

=item *

I<Description:> Couldn't parse the specified URI.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> KeyTooLongError

=item *

I<Description:> Your key is too long.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> MalformedACLError

=item *

I<Description:> The XML you provided was not well-formed or did not
validate against our published schema.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> MalformedPOSTRequest

=item *

I<Description:> The body of your POST request is not well-formed
multipart/form-data.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> MalformedXML

=item *

I<Description:> This happens when the user sends malformed XML (XML
that doesn't conform to the published XSD) for the configuration. The
error message is, "The XML you provided was not well-formed or did not
validate against our published schema."

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> MaxMessageLengthExceeded

=item *

I<Description:> Your request was too big.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> MaxPostPreDataLengthExceededError

=item *

I<Description:> Your POST request fields preceding the upload file were
too large.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> MetadataTooLarge

=item *

I<Description:> Your metadata headers exceed the maximum allowed
metadata size.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> MethodNotAllowed

=item *

I<Description:> The specified method is not allowed against this
resource.

=item *

I<HTTP Status Code:> 405 Method Not Allowed

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> MissingAttachment

=item *

I<Description:> A SOAP attachment was expected, but none were found.

=item *

I<HTTP Status Code:> N/A

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> MissingContentLength

=item *

I<Description:> You must provide the Content-Length HTTP header.

=item *

I<HTTP Status Code:> 411 Length Required

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> MissingRequestBodyError

=item *

I<Description:> This happens when the user sends an empty XML document
as a request. The error message is, "Request body is empty."

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> MissingSecurityElement

=item *

I<Description:> The SOAP 1.1 request is missing a security element.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> MissingSecurityHeader

=item *

I<Description:> Your request is missing a required header.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> NoLoggingStatusForKey

=item *

I<Description:> There is no such thing as a logging status subresource
for a key.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> NoSuchBucket

=item *

I<Description:> The specified bucket does not exist.

=item *

I<HTTP Status Code:> 404 Not Found

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> NoSuchBucketPolicy

=item *

I<Description:> The specified bucket does not have a bucket policy.

=item *

I<HTTP Status Code:> 404 Not Found

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> NoSuchKey

=item *

I<Description:> The specified key does not exist.

=item *

I<HTTP Status Code:> 404 Not Found

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> NoSuchLifecycleConfiguration

=item *

I<Description:> The lifecycle configuration does not exist.

=item *

I<HTTP Status Code:> 404 Not Found

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> NoSuchUpload

=item *

I<Description:> The specified multipart upload does not exist. The
upload ID might be invalid, or the multipart upload might have been
aborted or completed.

=item *

I<HTTP Status Code:> 404 Not Found

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> NoSuchVersion

=item *

I<Description:> Indicates that the version ID specified in the request
does not match an existing version.

=item *

I<HTTP Status Code:> 404 Not Found

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> NotImplemented

=item *

I<Description:> A header you provided implies functionality that is not
implemented.

=item *

I<HTTP Status Code:> 501 Not Implemented

=item *

I<SOAP Fault Code Prefix:> Server

=back

=item *

=over

=item *

I<Code:> NotSignedUp

=item *

I<Description:> Your account is not signed up for the Amazon S3
service. You must sign up before you can use Amazon S3. You can sign up
at the following URL: https://aws.amazon.com/s3

=item *

I<HTTP Status Code:> 403 Forbidden

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> OperationAborted

=item *

I<Description:> A conflicting conditional operation is currently in
progress against this resource. Try again.

=item *

I<HTTP Status Code:> 409 Conflict

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> PermanentRedirect

=item *

I<Description:> The bucket you are attempting to access must be
addressed using the specified endpoint. Send all future requests to
this endpoint.

=item *

I<HTTP Status Code:> 301 Moved Permanently

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> PreconditionFailed

=item *

I<Description:> At least one of the preconditions you specified did not
hold.

=item *

I<HTTP Status Code:> 412 Precondition Failed

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> Redirect

=item *

I<Description:> Temporary redirect.

=item *

I<HTTP Status Code:> 307 Moved Temporarily

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> RestoreAlreadyInProgress

=item *

I<Description:> Object restore is already in progress.

=item *

I<HTTP Status Code:> 409 Conflict

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> RequestIsNotMultiPartContent

=item *

I<Description:> Bucket POST must be of the enclosure-type
multipart/form-data.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> RequestTimeout

=item *

I<Description:> Your socket connection to the server was not read from
or written to within the timeout period.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> RequestTimeTooSkewed

=item *

I<Description:> The difference between the request time and the
server's time is too large.

=item *

I<HTTP Status Code:> 403 Forbidden

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> RequestTorrentOfBucketError

=item *

I<Description:> Requesting the torrent file of a bucket is not
permitted.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> SignatureDoesNotMatch

=item *

I<Description:> The request signature we calculated does not match the
signature you provided. Check your AWS secret access key and signing
method. For more information, see REST Authentication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html)
and SOAP Authentication
(https://docs.aws.amazon.com/AmazonS3/latest/dev/SOAPAuthentication.html)
for details.

=item *

I<HTTP Status Code:> 403 Forbidden

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> ServiceUnavailable

=item *

I<Description:> Reduce your request rate.

=item *

I<HTTP Status Code:> 503 Service Unavailable

=item *

I<SOAP Fault Code Prefix:> Server

=back

=item *

=over

=item *

I<Code:> SlowDown

=item *

I<Description:> Reduce your request rate.

=item *

I<HTTP Status Code:> 503 Slow Down

=item *

I<SOAP Fault Code Prefix:> Server

=back

=item *

=over

=item *

I<Code:> TemporaryRedirect

=item *

I<Description:> You are being redirected to the bucket while DNS
updates.

=item *

I<HTTP Status Code:> 307 Moved Temporarily

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> TokenRefreshRequired

=item *

I<Description:> The provided token must be refreshed.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> TooManyBuckets

=item *

I<Description:> You have attempted to create more buckets than allowed.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> UnexpectedContent

=item *

I<Description:> This request does not support content.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> UnresolvableGrantByEmailAddress

=item *

I<Description:> The email address you provided does not match any
account on record.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=item *

=over

=item *

I<Code:> UserKeyMustBeSpecified

=item *

I<Description:> The bucket POST must contain the specified field name.
If it is specified, check the order of the fields.

=item *

I<HTTP Status Code:> 400 Bad Request

=item *

I<SOAP Fault Code Prefix:> Client

=back

=back



=head2 Key => Str

  The error key.


=head2 Message => Str

  The error message contains a generic description of the error condition
in English. It is intended for a human audience. Simple programs
display the message directly to the end user if they encounter an error
condition they don't know how or don't care to handle. Sophisticated
programs with more exhaustive error handling and proper
internationalization are more likely to ignore the error message.


=head2 VersionId => Str

  The version ID of the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

