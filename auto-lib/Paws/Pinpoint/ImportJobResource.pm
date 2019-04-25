package Paws::Pinpoint::ImportJobResource;
  use Moose;
  has DefineSegment => (is => 'ro', isa => 'Bool');
  has ExternalId => (is => 'ro', isa => 'Str');
  has Format => (is => 'ro', isa => 'Str');
  has RegisterEndpoints => (is => 'ro', isa => 'Bool');
  has RoleArn => (is => 'ro', isa => 'Str');
  has S3Url => (is => 'ro', isa => 'Str');
  has SegmentId => (is => 'ro', isa => 'Str');
  has SegmentName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ImportJobResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ImportJobResource object:

  $service_obj->Method(Att1 => { DefineSegment => $value, ..., SegmentName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ImportJobResource object:

  $result = $service_obj->Method(...);
  $result->Att1->DefineSegment

=head1 DESCRIPTION

Import job resource

=head1 ATTRIBUTES


=head2 DefineSegment => Bool

  Sets whether the endpoints create a segment when they are imported.


=head2 ExternalId => Str

  (Deprecated) Your AWS account ID, which you assigned to the ExternalID
key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM
role. This requirement is removed, and external IDs are not recommended
for IAM roles assumed by Amazon Pinpoint.


=head2 Format => Str

  The format of the files that contain the endpoint definitions. Valid
values: CSV, JSON


=head2 RegisterEndpoints => Bool

  Sets whether the endpoints are registered with Amazon Pinpoint when
they are imported.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of an IAM role that grants Amazon
Pinpoint access to the Amazon S3 location that contains the endpoints
to import.


=head2 S3Url => Str

  The URL of the S3 bucket that contains the segment information to
import. The location can be a folder or a single file. The URL should
use the following format: s3://bucket-name/folder-name/file-name Amazon
Pinpoint imports endpoints from this location and any subfolders it
contains.


=head2 SegmentId => Str

  The ID of the segment to update if the import job is meant to update an
existing segment.


=head2 SegmentName => Str

  A custom name for the segment created by the import job. Use if
DefineSegment is true.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

