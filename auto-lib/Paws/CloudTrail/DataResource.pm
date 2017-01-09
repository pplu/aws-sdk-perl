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

The Amazon S3 objects that you specify in your event selectors for your
trail to log data events. Data events are object level API operations
that access S3 objects, such as C<GetObject>, C<DeleteObject>, and
C<PutObject>. You can specify up to 50 S3 buckets and object prefixes
for an event selector.

Example

=over

=item 1.

You create an event selector for a trail and specify an S3 bucket and
an empty prefix, such as C<arn:aws:s3:::bucket-1/>.

=item 2.

You upload an image file to C<bucket-1>.

=item 3.

The C<PutObject> API operation occurs on an object in the S3 bucket
that you specified in the event selector. The trail processes and logs
the event.

=item 4.

You upload another image file to a different S3 bucket named
C<arn:aws:s3:::bucket-2>.

=item 5.

The event occurs on an object in an S3 bucket that you didn't specify
in the event selector. The trail doesnE<rsquo>t log the event.

=back


=head1 ATTRIBUTES


=head2 Type => Str

  The resource type in which you want to log data events. You can specify
only the following value: C<AWS::S3::Object>.


=head2 Values => ArrayRef[Str|Undef]

  A list of ARN-like strings for the specified S3 objects.

To log data events for all objects in an S3 bucket, specify the bucket
and an empty object prefix such as C<arn:aws:s3:::bucket-1/>. The trail
logs data events for all objects in this S3 bucket.

To log data events for specific objects, specify the S3 bucket and
object prefix such as C<arn:aws:s3:::bucket-1/example-images>. The
trail logs data events for objects in this S3 bucket that match the
prefix.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

