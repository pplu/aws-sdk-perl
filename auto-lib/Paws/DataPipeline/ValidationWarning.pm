package Paws::DataPipeline::ValidationWarning;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Warnings => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'warnings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ValidationWarning

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::ValidationWarning object:

  $service_obj->Method(Att1 => { Id => $value, ..., Warnings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::ValidationWarning object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Defines a validation warning. Validation warnings do not prevent
pipeline activation. The set of validation warnings that can be
returned are defined by AWS Data Pipeline.

=head1 ATTRIBUTES


=head2 Id => Str

  The identifier of the object that contains the validation warning.


=head2 Warnings => ArrayRef[Str|Undef]

  A description of the validation warning.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

