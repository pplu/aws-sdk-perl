package Paws::EC2::ExportTask;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped']);
  has ExportTaskId => (is => 'ro', isa => 'Str', xmlname => 'exportTaskId', traits => ['Unwrapped']);
  has ExportToS3Task => (is => 'ro', isa => 'Paws::EC2::ExportToS3Task', xmlname => 'exportToS3', traits => ['Unwrapped']);
  has InstanceExportDetails => (is => 'ro', isa => 'Paws::EC2::InstanceExportDetails', xmlname => 'instanceExport', traits => ['Unwrapped']);
  has State => (is => 'ro', isa => 'Str', xmlname => 'state', traits => ['Unwrapped']);
  has StatusMessage => (is => 'ro', isa => 'Str', xmlname => 'statusMessage', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ExportTask

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ExportTask object:

  $service_obj->Method(Att1 => { Description => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ExportTask object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 ATTRIBUTES

=head2 Description => Str

  A description of the resource being exported.

=head2 ExportTaskId => Str

  The ID of the export task.

=head2 ExportToS3Task => L<Paws::EC2::ExportToS3Task>

  Information about the export task.

=head2 InstanceExportDetails => L<Paws::EC2::InstanceExportDetails>

  Information about the instance to export.

=head2 State => Str

  The state of the export task.

=head2 StatusMessage => Str

  The status message related to the export task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
