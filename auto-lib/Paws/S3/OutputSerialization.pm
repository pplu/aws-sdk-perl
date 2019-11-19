# Generated from default/object.tt
package Paws::S3::OutputSerialization;
  use Moo;
  use Types::Standard qw//;
  use Paws::S3::Types qw/S3_CSVOutput S3_JSONOutput/;
  has CSV => (is => 'ro', isa => S3_CSVOutput);
  has JSON => (is => 'ro', isa => S3_JSONOutput);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JSON' => {
                           'class' => 'Paws::S3::JSONOutput',
                           'type' => 'S3_JSONOutput'
                         },
               'CSV' => {
                          'type' => 'S3_CSVOutput',
                          'class' => 'Paws::S3::CSVOutput'
                        }
             }
}
;
    return $Params_map;
  }


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


=head2 CSV => S3_CSVOutput

  Describes the serialization of CSV-encoded Select results.


=head2 JSON => S3_JSONOutput

  Specifies JSON as request's output serialization format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

