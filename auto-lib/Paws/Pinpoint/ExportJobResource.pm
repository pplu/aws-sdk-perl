package Paws::Pinpoint::ExportJobResource;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str');
  has S3UrlPrefix => (is => 'ro', isa => 'Str');
  has SegmentId => (is => 'ro', isa => 'Str');
  has SegmentVersion => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ExportJobResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ExportJobResource object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., SegmentVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ExportJobResource object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

Export job resource.

=head1 ATTRIBUTES


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of an IAM role that grants Amazon
Pinpoint access to the Amazon S3 location that endpoints will be
exported to.


=head2 S3UrlPrefix => Str

  A URL that points to the location within an Amazon S3 bucket that will
receive the export. The location is typically a folder with multiple
files. The URL should follow this format: s3://bucket-name/folder-name/
Amazon Pinpoint will export endpoints to this location.


=head2 SegmentId => Str

  The ID of the segment to export endpoints from. If not present, Amazon
Pinpoint exports all of the endpoints that belong to the application.


=head2 SegmentVersion => Int

  The version of the segment to export if specified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

