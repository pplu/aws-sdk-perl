package Paws::EC2::ExportTask;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ExportToS3Task EC2_InstanceExportDetails/;
  has Description => (is => 'ro', isa => Str);
  has ExportTaskId => (is => 'ro', isa => Str);
  has ExportToS3Task => (is => 'ro', isa => EC2_ExportToS3Task);
  has InstanceExportDetails => (is => 'ro', isa => EC2_InstanceExportDetails);
  has State => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExportToS3Task' => {
                                     'class' => 'Paws::EC2::ExportToS3Task',
                                     'type' => 'EC2_ExportToS3Task'
                                   },
               'ExportTaskId' => {
                                   'type' => 'Str'
                                 },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'State' => {
                            'type' => 'Str'
                          },
               'InstanceExportDetails' => {
                                            'class' => 'Paws::EC2::InstanceExportDetails',
                                            'type' => 'EC2_InstanceExportDetails'
                                          },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ExportToS3Task' => 'exportToS3',
                       'ExportTaskId' => 'exportTaskId',
                       'StatusMessage' => 'statusMessage',
                       'State' => 'state',
                       'InstanceExportDetails' => 'instanceExport',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ExportTask

=head1 USAGE

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

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the resource being exported.


=head2 ExportTaskId => Str

  The ID of the export task.


=head2 ExportToS3Task => EC2_ExportToS3Task

  Information about the export task.


=head2 InstanceExportDetails => EC2_InstanceExportDetails

  Information about the instance to export.


=head2 State => Str

  The state of the export task.


=head2 StatusMessage => Str

  The status message related to the export task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
