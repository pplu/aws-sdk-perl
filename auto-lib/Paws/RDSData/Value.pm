# Generated from default/object.tt
package Paws::RDSData::Value;
  use Moo;
  use Types::Standard qw/ArrayRef Int Bool Str Num/;
  use Paws::RDSData::Types qw/RDSData_Value RDSData_StructValue/;
  has ArrayValues => (is => 'ro', isa => ArrayRef[RDSData_Value]);
  has BigIntValue => (is => 'ro', isa => Int);
  has BitValue => (is => 'ro', isa => Bool);
  has BlobValue => (is => 'ro', isa => Str);
  has DoubleValue => (is => 'ro', isa => Num);
  has IntValue => (is => 'ro', isa => Int);
  has IsNull => (is => 'ro', isa => Bool);
  has RealValue => (is => 'ro', isa => Num);
  has StringValue => (is => 'ro', isa => Str);
  has StructValue => (is => 'ro', isa => RDSData_StructValue);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IntValue' => {
                               'type' => 'Int'
                             },
               'BlobValue' => {
                                'type' => 'Str'
                              },
               'StringValue' => {
                                  'type' => 'Str'
                                },
               'ArrayValues' => {
                                  'class' => 'Paws::RDSData::Value',
                                  'type' => 'ArrayRef[RDSData_Value]'
                                },
               'BigIntValue' => {
                                  'type' => 'Int'
                                },
               'IsNull' => {
                             'type' => 'Bool'
                           },
               'BitValue' => {
                               'type' => 'Bool'
                             },
               'DoubleValue' => {
                                  'type' => 'Num'
                                },
               'StructValue' => {
                                  'class' => 'Paws::RDSData::StructValue',
                                  'type' => 'RDSData_StructValue'
                                },
               'RealValue' => {
                                'type' => 'Num'
                              }
             },
  'NameInRequest' => {
                       'IntValue' => 'intValue',
                       'BlobValue' => 'blobValue',
                       'StringValue' => 'stringValue',
                       'ArrayValues' => 'arrayValues',
                       'BigIntValue' => 'bigIntValue',
                       'IsNull' => 'isNull',
                       'BitValue' => 'bitValue',
                       'DoubleValue' => 'doubleValue',
                       'StructValue' => 'structValue',
                       'RealValue' => 'realValue'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::Value

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDSData::Value object:

  $service_obj->Method(Att1 => { ArrayValues => $value, ..., StructValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::Value object:

  $result = $service_obj->Method(...);
  $result->Att1->ArrayValues

=head1 DESCRIPTION

Contains the value of a column.

=head1 ATTRIBUTES


=head2 ArrayValues => ArrayRef[RDSData_Value]

  An array of column values.


=head2 BigIntValue => Int

  A value for a column of big integer data type.


=head2 BitValue => Bool

  A value for a column of BIT data type.


=head2 BlobValue => Str

  A value for a column of BLOB data type.


=head2 DoubleValue => Num

  A value for a column of double data type.


=head2 IntValue => Int

  A value for a column of integer data type.


=head2 IsNull => Bool

  A NULL value.


=head2 RealValue => Num

  A value for a column of real data type.


=head2 StringValue => Str

  A value for a column of string data type.


=head2 StructValue => RDSData_StructValue

  A value for a column of STRUCT data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

