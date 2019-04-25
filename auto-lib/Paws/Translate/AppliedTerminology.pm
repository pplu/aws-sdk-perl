package Paws::Translate::AppliedTerminology;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Terms => (is => 'ro', isa => 'ArrayRef[Paws::Translate::Term]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::AppliedTerminology

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Translate::AppliedTerminology object:

  $service_obj->Method(Att1 => { Name => $value, ..., Terms => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Translate::AppliedTerminology object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The custom terminology applied to the input text by Amazon Translate
for the translated text response. This is optional in the response and
will only be present if you specified terminology input in the request.
Currently, only one terminology can be applied per TranslateText
request.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the custom terminology applied to the input text by Amazon
Translate for the translated text response.


=head2 Terms => ArrayRef[L<Paws::Translate::Term>]

  The specific terms of the custom terminology applied to the input text
by Amazon Translate for the translated text response. A maximum of 250
terms will be returned, and the specific terms applied will be the
first 250 terms in the source text.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

