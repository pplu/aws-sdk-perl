package Paws::SSM::DocumentDefaultVersionDescription;
  use Moose;
  has DefaultVersion => (is => 'ro', isa => 'Str');
  has DefaultVersionName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DocumentDefaultVersionDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::DocumentDefaultVersionDescription object:

  $service_obj->Method(Att1 => { DefaultVersion => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::DocumentDefaultVersionDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultVersion

=head1 DESCRIPTION

A default version of a document.

=head1 ATTRIBUTES


=head2 DefaultVersion => Str

  The default version of the document.


=head2 DefaultVersionName => Str

  The default version of the artifact associated with the document.


=head2 Name => Str

  The name of the document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

