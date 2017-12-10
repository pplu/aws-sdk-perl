package Paws::DataPipeline::ParameterObject;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ParameterAttribute]', request_name => 'attributes', traits => ['NameInRequest'], required => 1);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ParameterObject

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::ParameterObject object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::ParameterObject object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Contains information about a parameter object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::DataPipeline::ParameterAttribute>]

  The attributes of the parameter object.


=head2 B<REQUIRED> Id => Str

  The ID of the parameter object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

