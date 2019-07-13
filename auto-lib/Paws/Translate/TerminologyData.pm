package Paws::Translate::TerminologyData;
  use Moose;
  has File => (is => 'ro', isa => 'Str', required => 1);
  has Format => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TerminologyData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Translate::TerminologyData object:

  $service_obj->Method(Att1 => { File => $value, ..., Format => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Translate::TerminologyData object:

  $result = $service_obj->Method(...);
  $result->Att1->File

=head1 DESCRIPTION

The data associated with the custom terminology.

=head1 ATTRIBUTES


=head2 B<REQUIRED> File => Str

  The file containing the custom terminology data.


=head2 B<REQUIRED> Format => Str

  The data format of the custom terminology. Either CSV or TMX.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

