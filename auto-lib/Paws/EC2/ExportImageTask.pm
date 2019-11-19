package Paws::EC2::ExportImageTask;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ExportTaskS3Location/;
  has Description => (is => 'ro', isa => Str);
  has ExportImageTaskId => (is => 'ro', isa => Str);
  has ImageId => (is => 'ro', isa => Str);
  has Progress => (is => 'ro', isa => Str);
  has S3ExportLocation => (is => 'ro', isa => EC2_ExportTaskS3Location);
  has Status => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                },
               'S3ExportLocation' => {
                                       'type' => 'EC2_ExportTaskS3Location',
                                       'class' => 'Paws::EC2::ExportTaskS3Location'
                                     },
               'Progress' => {
                               'type' => 'Str'
                             },
               'ExportImageTaskId' => {
                                        'type' => 'Str'
                                      },
               'Status' => {
                             'type' => 'Str'
                           },
               'ImageId' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'S3ExportLocation' => 's3ExportLocation',
                       'ExportImageTaskId' => 'exportImageTaskId',
                       'Progress' => 'progress',
                       'Description' => 'description',
                       'StatusMessage' => 'statusMessage',
                       'Status' => 'status',
                       'ImageId' => 'imageId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ExportImageTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ExportImageTask object:

  $service_obj->Method(Att1 => { Description => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ExportImageTask object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the image being exported.


=head2 ExportImageTaskId => Str

  The ID of the export image task.


=head2 ImageId => Str

  The ID of the image.


=head2 Progress => Str

  The percent complete of the export image task.


=head2 S3ExportLocation => EC2_ExportTaskS3Location

  Information about the destination S3 bucket.


=head2 Status => Str

  The status of the export image task. The possible values are C<active>,
C<completed>, C<deleting>, and C<deleted>.


=head2 StatusMessage => Str

  The status message for the export image task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
