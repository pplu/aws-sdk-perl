package Paws::EC2::ExportImageTask;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has ExportImageTaskId => (is => 'ro', isa => 'Str', request_name => 'exportImageTaskId', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has Progress => (is => 'ro', isa => 'Str', request_name => 'progress', traits => ['NameInRequest']);
  has S3ExportLocation => (is => 'ro', isa => 'Paws::EC2::ExportTaskS3Location', request_name => 's3ExportLocation', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
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


=head2 S3ExportLocation => L<Paws::EC2::ExportTaskS3Location>

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
