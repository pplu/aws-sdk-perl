package Paws::KinesisAnalyticsV2::CodeContentUpdate;
  use Moose;
  has S3ContentLocationUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::S3ContentLocationUpdate');
  has TextContentUpdate => (is => 'ro', isa => 'Str');
  has ZipFileContentUpdate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CodeContentUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::CodeContentUpdate object:

  $service_obj->Method(Att1 => { S3ContentLocationUpdate => $value, ..., ZipFileContentUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::CodeContentUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->S3ContentLocationUpdate

=head1 DESCRIPTION

Describes an update to the code of a Java-based Kinesis Data Analytics
application.

=head1 ATTRIBUTES


=head2 S3ContentLocationUpdate => L<Paws::KinesisAnalyticsV2::S3ContentLocationUpdate>

  Describes an update to the location of code for an application.


=head2 TextContentUpdate => Str

  Describes an update to the text code for an application.


=head2 ZipFileContentUpdate => Str

  Describes an update to the zipped code for an application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

