# Generated from default/object.tt
package Paws::DataPipeline::PipelineObject;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::DataPipeline::Types qw/DataPipeline_Field/;
  has Fields => (is => 'ro', isa => ArrayRef[DataPipeline_Field], required => 1);
  has Id => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Fields' => {
                             'class' => 'Paws::DataPipeline::Field',
                             'type' => 'ArrayRef[DataPipeline_Field]'
                           },
               'Id' => {
                         'type' => 'Str'
                       },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Fields' => 'fields',
                       'Id' => 'id',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'Fields' => 1,
                    'Id' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::PipelineObject

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::PipelineObject object:

  $service_obj->Method(Att1 => { Fields => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::PipelineObject object:

  $result = $service_obj->Method(...);
  $result->Att1->Fields

=head1 DESCRIPTION

Contains information about a pipeline object. This can be a logical,
physical, or physical attempt pipeline object. The complete set of
components of a pipeline defines the pipeline.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Fields => ArrayRef[DataPipeline_Field]

  Key-value pairs that define the properties of the object.


=head2 B<REQUIRED> Id => Str

  The ID of the object.


=head2 B<REQUIRED> Name => Str

  The name of the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

