# Generated from default/object.tt
package Paws::RDSData::Field;
  use Moo;
  use Types::Standard qw/Str Bool Num Int/;
  use Paws::RDSData::Types qw/RDSData_ArrayValue/;
  has ArrayValue => (is => 'ro', isa => RDSData_ArrayValue);
  has BlobValue => (is => 'ro', isa => Str);
  has BooleanValue => (is => 'ro', isa => Bool);
  has DoubleValue => (is => 'ro', isa => Num);
  has IsNull => (is => 'ro', isa => Bool);
  has LongValue => (is => 'ro', isa => Int);
  has StringValue => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ArrayValue' => {
                                 'class' => 'Paws::RDSData::ArrayValue',
                                 'type' => 'RDSData_ArrayValue'
                               },
               'DoubleValue' => {
                                  'type' => 'Num'
                                },
               'BooleanValue' => {
                                   'type' => 'Bool'
                                 },
               'IsNull' => {
                             'type' => 'Bool'
                           },
               'LongValue' => {
                                'type' => 'Int'
                              },
               'StringValue' => {
                                  'type' => 'Str'
                                },
               'BlobValue' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'IsNull' => 'isNull',
                       'ArrayValue' => 'arrayValue',
                       'DoubleValue' => 'doubleValue',
                       'BooleanValue' => 'booleanValue',
                       'LongValue' => 'longValue',
                       'StringValue' => 'stringValue',
                       'BlobValue' => 'blobValue'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::Field

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDSData::Field object:

  $service_obj->Method(Att1 => { ArrayValue => $value, ..., StringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::Field object:

  $result = $service_obj->Method(...);
  $result->Att1->ArrayValue

=head1 DESCRIPTION

Contains a value.

=head1 ATTRIBUTES


=head2 ArrayValue => RDSData_ArrayValue

  An array of values.


=head2 BlobValue => Str

  A value of BLOB data type.


=head2 BooleanValue => Bool

  A value of Boolean data type.


=head2 DoubleValue => Num

  A value of double data type.


=head2 IsNull => Bool

  A NULL value.


=head2 LongValue => Int

  A value of long data type.


=head2 StringValue => Str

  A value of string data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

