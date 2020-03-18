package Paws::Comprehend::DocumentClass;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Score => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DocumentClass

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::DocumentClass object:

  $service_obj->Method(Att1 => { Name => $value, ..., Score => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::DocumentClass object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Specifies the class that categorizes the document being analyzed

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the class.


=head2 Score => Num

  The confidence score that Amazon Comprehend has this class correctly
attributed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

