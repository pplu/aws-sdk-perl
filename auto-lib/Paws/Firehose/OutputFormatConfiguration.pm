package Paws::Firehose::OutputFormatConfiguration;
  use Moose;
  has Serializer => (is => 'ro', isa => 'Paws::Firehose::Serializer');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::OutputFormatConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::OutputFormatConfiguration object:

  $service_obj->Method(Att1 => { Serializer => $value, ..., Serializer => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::OutputFormatConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Serializer

=head1 DESCRIPTION

Specifies the serializer that you want Kinesis Data Firehose to use to
convert the format of your data before it writes it to Amazon S3.

=head1 ATTRIBUTES


=head2 Serializer => L<Paws::Firehose::Serializer>

  Specifies which serializer to use. You can choose either the ORC SerDe
or the Parquet SerDe. If both are non-null, the server rejects the
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

