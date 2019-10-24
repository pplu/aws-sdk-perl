# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::CodeContent;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_S3ContentLocation/;
  has S3ContentLocation => (is => 'ro', isa => KinesisAnalyticsV2_S3ContentLocation);
  has TextContent => (is => 'ro', isa => Str);
  has ZipFileContent => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TextContent' => {
                                  'type' => 'Str'
                                },
               'S3ContentLocation' => {
                                        'class' => 'Paws::KinesisAnalyticsV2::S3ContentLocation',
                                        'type' => 'KinesisAnalyticsV2_S3ContentLocation'
                                      },
               'ZipFileContent' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CodeContent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::CodeContent object:

  $service_obj->Method(Att1 => { S3ContentLocation => $value, ..., ZipFileContent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::CodeContent object:

  $result = $service_obj->Method(...);
  $result->Att1->S3ContentLocation

=head1 DESCRIPTION

Specifies either the application code, or the location of the
application code, for a Java-based Amazon Kinesis Data Analytics
application.

=head1 ATTRIBUTES


=head2 S3ContentLocation => KinesisAnalyticsV2_S3ContentLocation

  Information about the Amazon S3 bucket containing the application code.


=head2 TextContent => Str

  The text-format code for a Java-based Kinesis Data Analytics
application.


=head2 ZipFileContent => Str

  The zip-format code for a Java-based Kinesis Data Analytics
application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

