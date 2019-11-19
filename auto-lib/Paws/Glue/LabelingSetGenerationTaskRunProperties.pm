# Generated from default/object.tt
package Paws::Glue::LabelingSetGenerationTaskRunProperties;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has OutputS3Path => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OutputS3Path' => {
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

Paws::Glue::LabelingSetGenerationTaskRunProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::LabelingSetGenerationTaskRunProperties object:

  $service_obj->Method(Att1 => { OutputS3Path => $value, ..., OutputS3Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::LabelingSetGenerationTaskRunProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->OutputS3Path

=head1 DESCRIPTION

Specifies configuration properties for a labeling set generation task
run.

=head1 ATTRIBUTES


=head2 OutputS3Path => Str

  The Amazon Simple Storage Service (Amazon S3) path where you will
generate the labeling set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

