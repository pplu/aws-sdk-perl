package Paws::CloudTrail::DataResource;
  use Moose;
  has Type => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::DataResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::DataResource object:

  $service_obj->Method(Att1 => { Type => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::DataResource object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

The Amazon S3 buckets or AWS Lambda functions that you specify in your
event selectors for your trail to log data events. Data events provide
insight into the resource operations performed on or within a resource
itself. These are also known as data plane operations. You can specify
up to 250 data resources for a trail.

The total number of allowed data resources is 250. This number can be
distributed between 1 and 5 event selectors, but the total cannot
exceed 250 across all selectors.

The following example demonstrates how logging works when you configure
logging of all data events for an S3 bucket named C<bucket-1>. In this
example, the CloudTrail user spcified an empty prefix, and the option
to log both C<Read> and C<Write> data events.

=over

=item 1.

A user uploads an image file to C<bucket-1>.

=item 2.

The C<PutObject> API operation is an Amazon S3 object-level API. It is
recorded as a data event in CloudTrail. Because the CloudTrail user
specified an S3 bucket with an empty prefix, events that occur on any
object in that bucket are logged. The trail processes and logs the
event.

=item 3.

A user uploads an object to an Amazon S3 bucket named
C<arn:aws:s3:::bucket-2>.

=item 4.

The C<PutObject> API operation occurred for an object in an S3 bucket
that the CloudTrail user didn't specify for the trail. The trail
doesnE<rsquo>t log the event.

=back

The following example demonstrates how logging works when you configure
logging of AWS Lambda data events for a Lambda function named
I<MyLambdaFunction>, but not for all AWS Lambda functions.

=over

=item 1.

A user runs a script that includes a call to the I<MyLambdaFunction>
function and the I<MyOtherLambdaFunction> function.

=item 2.

The C<Invoke> API operation on I<MyLambdaFunction> is an AWS Lambda
API. It is recorded as a data event in CloudTrail. Because the
CloudTrail user specified logging data events for I<MyLambdaFunction>,
any invocations of that function are logged. The trail processes and
logs the event.

=item 3.

The C<Invoke> API operation on I<MyOtherLambdaFunction> is an AWS
Lambda API. Because the CloudTrail user did not specify logging data
events for all Lambda functions, the C<Invoke> operation for
I<MyOtherLambdaFunction> does not match the function specified for the
trail. The trail doesnE<rsquo>t log the event.

=back


=head1 ATTRIBUTES


=head2 Type => Str

  The resource type in which you want to log data events. You can specify
C<AWS::S3::Object> or C<AWS::Lambda::Function> resources.


=head2 Values => ArrayRef[Str|Undef]

  An array of Amazon Resource Name (ARN) strings or partial ARN strings
for the specified objects.

=over

=item *

To log data events for all objects in all S3 buckets in your AWS
account, specify the prefix as C<arn:aws:s3:::>.

This will also enable logging of data event activity performed by any
user or role in your AWS account, even if that activity is performed on
a bucket that belongs to another AWS account.

=item *

To log data events for all objects in all S3 buckets that include
I<my-bucket> in their names, specify the prefix as
C<aws:s3:::my-bucket>. The trail logs data events for all objects in
all buckets whose name contains a match for I<my-bucket>.

=item *

To log data events for all objects in an S3 bucket, specify the bucket
and an empty object prefix such as C<arn:aws:s3:::bucket-1/>. The trail
logs data events for all objects in this S3 bucket.

=item *

To log data events for specific objects, specify the S3 bucket and
object prefix such as C<arn:aws:s3:::bucket-1/example-images>. The
trail logs data events for objects in this S3 bucket that match the
prefix.

=item *

To log data events for all functions in your AWS account, specify the
prefix as C<arn:aws:lambda>.

This will also enable logging of C<Invoke> activity performed by any
user or role in your AWS account, even if that activity is performed on
a function that belongs to another AWS account.

=item *

To log data eents for a specific Lambda function, specify the function
ARN.

Lambda function ARNs are exact. Unlike S3, you cannot use matching. For
example, if you specify a function ARN
I<arn:aws:lambda:us-west-2:111111111111:function:helloworld>, data
events will only be logged for
I<arn:aws:lambda:us-west-2:111111111111:function:helloworld>. They will
not be logged for
I<arn:aws:lambda:us-west-2:111111111111:function:helloworld2>.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

