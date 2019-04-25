package Paws::SageMaker::SuggestionQuery;
  use Moose;
  has PropertyNameQuery => (is => 'ro', isa => 'Paws::SageMaker::PropertyNameQuery');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SuggestionQuery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::SuggestionQuery object:

  $service_obj->Method(Att1 => { PropertyNameQuery => $value, ..., PropertyNameQuery => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::SuggestionQuery object:

  $result = $service_obj->Method(...);
  $result->Att1->PropertyNameQuery

=head1 DESCRIPTION

Limits the property names that are included in the response.

=head1 ATTRIBUTES


=head2 PropertyNameQuery => L<Paws::SageMaker::PropertyNameQuery>

  A type of C<SuggestionQuery>. Defines a property name hint. Only
property names that match the specified hint are included in the
response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

