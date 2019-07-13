package Paws::KinesisAnalyticsV2::S3ContentLocationUpdate;
  use Moose;
  has BucketARNUpdate => (is => 'ro', isa => 'Str');
  has FileKeyUpdate => (is => 'ro', isa => 'Str');
  has ObjectVersionUpdate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::S3ContentLocationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::S3ContentLocationUpdate object:

  $service_obj->Method(Att1 => { BucketARNUpdate => $value, ..., ObjectVersionUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::S3ContentLocationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketARNUpdate

=head1 DESCRIPTION

Describes an update for the Amazon S3 code content location for a
Java-based Amazon Kinesis Data Analytics application.

=head1 ATTRIBUTES


=head2 BucketARNUpdate => Str

  The new Amazon Resource Name (ARN) for the S3 bucket containing the
application code.


=head2 FileKeyUpdate => Str

  The new file key for the object containing the application code.


=head2 ObjectVersionUpdate => Str

  The new version of the object containing the application code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

