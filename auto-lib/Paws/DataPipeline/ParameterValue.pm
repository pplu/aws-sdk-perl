package Paws::DataPipeline::ParameterValue;
  use Moose;
  has id => (is => 'ro', isa => 'Str', required => 1);
  has stringValue => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ParameterValue

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::ParameterValue object:

  $service_obj->Method(Att1 => { id => $value, ..., stringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::ParameterValue object:

  $result = $service_obj->Method(...);
  $result->Att1->id

=head1 ATTRIBUTES

=head2 B<REQUIRED> id => Str

  

The ID of the parameter value.










=head2 B<REQUIRED> stringValue => Str

  

The field value, expressed as a String.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

