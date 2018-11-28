package Paws::KinesisAnalyticsV2::CodeContentDescription;
  use Moose;
  has CodeMD5 => (is => 'ro', isa => 'Str');
  has CodeSize => (is => 'ro', isa => 'Int');
  has S3ApplicationCodeLocationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::S3ApplicationCodeLocationDescription');
  has TextContent => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CodeContentDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::CodeContentDescription object:

  $service_obj->Method(Att1 => { CodeMD5 => $value, ..., TextContent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::CodeContentDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CodeMD5

=head1 DESCRIPTION

Describes details about the application code for a Java-based Kinesis
Data Analytics application.

=head1 ATTRIBUTES


=head2 CodeMD5 => Str

  The checksum that can be used to validate zip-format code.


=head2 CodeSize => Int

  The size in bytes of the application code. Can be used to validate
zip-format code.


=head2 S3ApplicationCodeLocationDescription => L<Paws::KinesisAnalyticsV2::S3ApplicationCodeLocationDescription>

  The S3 bucket Amazon Resource Name (ARN), file key, and object version
of the application code stored in Amazon S3.


=head2 TextContent => Str

  The text-format code



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

