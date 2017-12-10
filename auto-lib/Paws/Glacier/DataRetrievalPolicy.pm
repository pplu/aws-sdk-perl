package Paws::Glacier::DataRetrievalPolicy;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::Glacier::DataRetrievalRule]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::DataRetrievalPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::DataRetrievalPolicy object:

  $service_obj->Method(Att1 => { Rules => $value, ..., Rules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::DataRetrievalPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->Rules

=head1 DESCRIPTION

Data retrieval policy.

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[L<Paws::Glacier::DataRetrievalRule>]

  The policy rule. Although this is a list type, currently there must be
only one rule, which contains a Strategy field and optionally a
BytesPerHour field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

