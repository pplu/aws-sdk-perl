package Paws::DataPipeline::ValidationWarning;
  use Moose;
  has id => (is => 'ro', isa => 'Str');
  has warnings => (is => 'ro', isa => 'ArrayRef[Str]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ValidationWarning

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::ValidationWarning object:

  $service_obj->Method(Att1 => { id => $value, ..., warnings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::ValidationWarning object:

  $result = $service_obj->Method(...);
  $result->Att1->id

=head1 ATTRIBUTES

=head2 id => Str

  

The identifier of the object that contains the validation warning.










=head2 warnings => ArrayRef[Str]

  

A description of the validation warning.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

