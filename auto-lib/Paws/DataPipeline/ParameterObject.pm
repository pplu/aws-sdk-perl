package Paws::DataPipeline::ParameterObject;
  use Moose;
  has attributes => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterAttribute]', required => 1);
  has id => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ParameterObject

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::ParameterObject object:

  $service_obj->Method(Att1 => { attributes => $value, ..., id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::ParameterObject object:

  $result = $service_obj->Method(...);
  $result->Att1->attributes

=head1 ATTRIBUTES

=head2 B<REQUIRED> attributes => ArrayRef[Paws::DataPipeline::ParameterAttribute]

  The attributes of the parameter object.

=head2 B<REQUIRED> id => Str

  The ID of the parameter object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

