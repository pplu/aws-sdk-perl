# Generated from default/object.tt
package Paws::DataPipeline::ValidationError;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::DataPipeline::Types qw//;
  has Errors => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Id => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'Errors' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           }
             },
  'NameInRequest' => {
                       'Errors' => 'errors',
                       'Id' => 'id'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ValidationError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::ValidationError object:

  $service_obj->Method(Att1 => { Errors => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::ValidationError object:

  $result = $service_obj->Method(...);
  $result->Att1->Errors

=head1 DESCRIPTION

Defines a validation error. Validation errors prevent pipeline
activation. The set of validation errors that can be returned are
defined by AWS Data Pipeline.

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[Str|Undef]

  A description of the validation error.


=head2 Id => Str

  The identifier of the object that contains the validation error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

