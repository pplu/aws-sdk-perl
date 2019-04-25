package Paws::S3::InputSerialization;
  use Moose;
  has CompressionType => (is => 'ro', isa => 'Str');
  has CSV => (is => 'ro', isa => 'Paws::S3::CSVInput');
  has JSON => (is => 'ro', isa => 'Paws::S3::JSONInput');
  has Parquet => (is => 'ro', isa => 'Paws::S3::ParquetInput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::InputSerialization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::InputSerialization object:

  $service_obj->Method(Att1 => { CompressionType => $value, ..., Parquet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::InputSerialization object:

  $result = $service_obj->Method(...);
  $result->Att1->CompressionType

=head1 DESCRIPTION

Describes the serialization format of the object.

=head1 ATTRIBUTES


=head2 CompressionType => Str

  Specifies object's compression format. Valid values: NONE, GZIP, BZIP2.
Default Value: NONE.


=head2 CSV => L<Paws::S3::CSVInput>

  Describes the serialization of a CSV-encoded object.


=head2 JSON => L<Paws::S3::JSONInput>

  Specifies JSON as object's input serialization format.


=head2 Parquet => L<Paws::S3::ParquetInput>

  Specifies Parquet as object's input serialization format.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

