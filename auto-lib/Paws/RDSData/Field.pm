package Paws::RDSData::Field;
  use Moose;
  has BlobValue => (is => 'ro', isa => 'Str', request_name => 'blobValue', traits => ['NameInRequest']);
  has BooleanValue => (is => 'ro', isa => 'Bool', request_name => 'booleanValue', traits => ['NameInRequest']);
  has DoubleValue => (is => 'ro', isa => 'Num', request_name => 'doubleValue', traits => ['NameInRequest']);
  has IsNull => (is => 'ro', isa => 'Bool', request_name => 'isNull', traits => ['NameInRequest']);
  has LongValue => (is => 'ro', isa => 'Int', request_name => 'longValue', traits => ['NameInRequest']);
  has StringValue => (is => 'ro', isa => 'Str', request_name => 'stringValue', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { BlobValue => $value, ..., StringValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDSData::Field object:

  $result = $service_obj->Method(...);
  $result->Att1->BlobValue

=head1 DESCRIPTION

Contains a value.

=head1 ATTRIBUTES


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

