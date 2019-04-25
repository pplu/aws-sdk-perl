package Paws::S3::OutputSerialization;
  use Moose;
  has CSV => (is => 'ro', isa => 'Paws::S3::CSVOutput');
  has JSON => (is => 'ro', isa => 'Paws::S3::JSONOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::OutputSerialization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::OutputSerialization object:

  $service_obj->Method(Att1 => { CSV => $value, ..., JSON => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::OutputSerialization object:

  $result = $service_obj->Method(...);
  $result->Att1->CSV

=head1 DESCRIPTION

Describes how results of the Select job are serialized.

=head1 ATTRIBUTES


=head2 CSV => L<Paws::S3::CSVOutput>

  Describes the serialization of CSV-encoded Select results.


=head2 JSON => L<Paws::S3::JSONOutput>

  Specifies JSON as request's output serialization format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

