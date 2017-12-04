package Paws::DataPipeline::Selector;
  use Moose;
  has FieldName => (is => 'ro', isa => 'Str', request_name => 'fieldName', traits => ['NameInRequest']);
  has Operator => (is => 'ro', isa => 'Paws::DataPipeline::Operator', request_name => 'operator', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::Selector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::Selector object:

  $service_obj->Method(Att1 => { FieldName => $value, ..., Operator => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::Selector object:

  $result = $service_obj->Method(...);
  $result->Att1->FieldName

=head1 DESCRIPTION

A comparision that is used to determine whether a query should return
this object.

=head1 ATTRIBUTES


=head2 FieldName => Str

  The name of the field that the operator will be applied to. The field
name is the "key" portion of the field definition in the pipeline
definition syntax that is used by the AWS Data Pipeline API. If the
field is not set on the object, the condition fails.


=head2 Operator => L<Paws::DataPipeline::Operator>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

