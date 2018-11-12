package Paws::Pinpoint::SegmentImportResource;
  use Moose;
  has ChannelCounts => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__integer');
  has ExternalId => (is => 'ro', isa => 'Str');
  has Format => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has S3Url => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentImportResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentImportResource object:

  $service_obj->Method(Att1 => { ChannelCounts => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentImportResource object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelCounts

=head1 DESCRIPTION

Segment import definition.

=head1 ATTRIBUTES


=head2 ChannelCounts => L<Paws::Pinpoint::MapOf__integer>

  The number of channel types in the imported segment.


=head2 ExternalId => Str

  (Deprecated) Your AWS account ID, which you assigned to the ExternalID
key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM
role. This requirement is removed, and external IDs are not recommended
for IAM roles assumed by Amazon Pinpoint.


=head2 Format => Str

  The format of the endpoint files that were imported to create this
segment. Valid values: CSV, JSON


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of an IAM role that grants Amazon
Pinpoint access to the endpoints in Amazon S3.


=head2 S3Url => Str

  The URL of the S3 bucket that the segment was imported from.


=head2 Size => Int

  The number of endpoints that were successfully imported to create this
segment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

