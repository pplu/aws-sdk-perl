package Paws::Glacier::InputSerialization;
  use Moose;
  has Csv => (is => 'ro', isa => 'Paws::Glacier::CSVInput', request_name => 'csv', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::InputSerialization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::InputSerialization object:

  $service_obj->Method(Att1 => { Csv => $value, ..., Csv => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::InputSerialization object:

  $result = $service_obj->Method(...);
  $result->Att1->Csv

=head1 DESCRIPTION

Describes how the archive is serialized.

=head1 ATTRIBUTES


=head2 Csv => L<Paws::Glacier::CSVInput>

  Describes the serialization of a CSV-encoded object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

