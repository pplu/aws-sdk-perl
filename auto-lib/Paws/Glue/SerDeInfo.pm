# Generated from default/object.tt
package Paws::Glue::SerDeInfo;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_ParametersMap/;
  has Name => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => Glue_ParametersMap);
  has SerializationLibrary => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::Glue::ParametersMap',
                                 'type' => 'Glue_ParametersMap'
                               },
               'SerializationLibrary' => {
                                           'type' => 'Str'
                                         },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::SerDeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::SerDeInfo object:

  $service_obj->Method(Att1 => { Name => $value, ..., SerializationLibrary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::SerDeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information about a serialization/deserialization program (SerDe) that
serves as an extractor and loader.

=head1 ATTRIBUTES


=head2 Name => Str

  Name of the SerDe.


=head2 Parameters => Glue_ParametersMap

  These key-value pairs define initialization parameters for the SerDe.


=head2 SerializationLibrary => Str

  Usually the class that implements the SerDe. An example is
C<org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

