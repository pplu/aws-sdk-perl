package Paws::RDSData::Value;
  use Moose;
  has ArrayValues => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::Value]', request_name => 'arrayValues', traits => ['NameInRequest']);
  has BigIntValue => (is => 'ro', isa => 'Int', request_name => 'bigIntValue', traits => ['NameInRequest']);
  has BitValue => (is => 'ro', isa => 'Bool', request_name => 'bitValue', traits => ['NameInRequest']);
  has BlobValue => (is => 'ro', isa => 'Str', request_name => 'blobValue', traits => ['NameInRequest']);
  has DoubleValue => (is => 'ro', isa => 'Num', request_name => 'doubleValue', traits => ['NameInRequest']);
  has IntValue => (is => 'ro', isa => 'Int', request_name => 'intValue', traits => ['NameInRequest']);
  has IsNull => (is => 'ro', isa => 'Bool', request_name => 'isNull', traits => ['NameInRequest']);
  has RealValue => (is => 'ro', isa => 'Num', request_name => 'realValue', traits => ['NameInRequest']);
  has StringValue => (is => 'ro', isa => 'Str', request_name => 'stringValue', traits => ['NameInRequest']);
  has StructValue => (is => 'ro', isa => 'Paws::RDSData::StructValue', request_name => 'structValue', traits => ['NameInRequest']);
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

Column value

=head1 ATTRIBUTES


=head2 ArrayValues => ArrayRef[L<Paws::RDSData::Value>]

  Arbitrarily nested arrays


=head2 BigIntValue => Int

  Long value


=head2 BitValue => Bool

  Bit value


=head2 BlobValue => Str

  Blob value


=head2 DoubleValue => Num

  Double value


=head2 IntValue => Int

  Integer value


=head2 IsNull => Bool

  Is column null


=head2 RealValue => Num

  Float value


=head2 StringValue => Str

  String value


=head2 StructValue => L<Paws::RDSData::StructValue>

  Struct or UDT



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

