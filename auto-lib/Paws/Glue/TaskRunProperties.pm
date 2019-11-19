# Generated from default/object.tt
package Paws::Glue::TaskRunProperties;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_LabelingSetGenerationTaskRunProperties Glue_ImportLabelsTaskRunProperties Glue_ExportLabelsTaskRunProperties Glue_FindMatchesTaskRunProperties/;
  has ExportLabelsTaskRunProperties => (is => 'ro', isa => Glue_ExportLabelsTaskRunProperties);
  has FindMatchesTaskRunProperties => (is => 'ro', isa => Glue_FindMatchesTaskRunProperties);
  has ImportLabelsTaskRunProperties => (is => 'ro', isa => Glue_ImportLabelsTaskRunProperties);
  has LabelingSetGenerationTaskRunProperties => (is => 'ro', isa => Glue_LabelingSetGenerationTaskRunProperties);
  has TaskType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TaskType' => {
                               'type' => 'Str'
                             },
               'ExportLabelsTaskRunProperties' => {
                                                    'class' => 'Paws::Glue::ExportLabelsTaskRunProperties',
                                                    'type' => 'Glue_ExportLabelsTaskRunProperties'
                                                  },
               'LabelingSetGenerationTaskRunProperties' => {
                                                             'type' => 'Glue_LabelingSetGenerationTaskRunProperties',
                                                             'class' => 'Paws::Glue::LabelingSetGenerationTaskRunProperties'
                                                           },
               'FindMatchesTaskRunProperties' => {
                                                   'class' => 'Paws::Glue::FindMatchesTaskRunProperties',
                                                   'type' => 'Glue_FindMatchesTaskRunProperties'
                                                 },
               'ImportLabelsTaskRunProperties' => {
                                                    'class' => 'Paws::Glue::ImportLabelsTaskRunProperties',
                                                    'type' => 'Glue_ImportLabelsTaskRunProperties'
                                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::TaskRunProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::TaskRunProperties object:

  $service_obj->Method(Att1 => { ExportLabelsTaskRunProperties => $value, ..., TaskType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::TaskRunProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->ExportLabelsTaskRunProperties

=head1 DESCRIPTION

The configuration properties for the task run.

=head1 ATTRIBUTES


=head2 ExportLabelsTaskRunProperties => Glue_ExportLabelsTaskRunProperties

  The configuration properties for an exporting labels task run.


=head2 FindMatchesTaskRunProperties => Glue_FindMatchesTaskRunProperties

  The configuration properties for a find matches task run.


=head2 ImportLabelsTaskRunProperties => Glue_ImportLabelsTaskRunProperties

  The configuration properties for an importing labels task run.


=head2 LabelingSetGenerationTaskRunProperties => Glue_LabelingSetGenerationTaskRunProperties

  The configuration properties for a labeling set generation task run.


=head2 TaskType => Str

  The type of task run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

