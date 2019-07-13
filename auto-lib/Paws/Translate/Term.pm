package Paws::Translate::Term;
  use Moose;
  has SourceText => (is => 'ro', isa => 'Str');
  has TargetText => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::Term

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Translate::Term object:

  $service_obj->Method(Att1 => { SourceText => $value, ..., TargetText => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Translate::Term object:

  $result = $service_obj->Method(...);
  $result->Att1->SourceText

=head1 DESCRIPTION

The term being translated by the custom terminology.

=head1 ATTRIBUTES


=head2 SourceText => Str

  The source text of the term being translated by the custom terminology.


=head2 TargetText => Str

  The target text of the term being translated by the custom terminology.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

