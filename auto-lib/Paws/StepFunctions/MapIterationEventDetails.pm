package Paws::StepFunctions::MapIterationEventDetails;
  use Moose;
  has Index => (is => 'ro', isa => 'Int', request_name => 'index', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::MapIterationEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::MapIterationEventDetails object:

  $service_obj->Method(Att1 => { Index => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::MapIterationEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Index

=head1 DESCRIPTION

Contains details about an iteration of a Map state.

=head1 ATTRIBUTES


=head2 Index => Int

  The index of the array belonging to the Map state iteration.


=head2 Name => Str

  The name of the iterationE<rsquo>s parent Map state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

