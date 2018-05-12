package Paws::Firehose::InputFormatConfiguration;
  use Moose;
  has Deserializer => (is => 'ro', isa => 'Paws::Firehose::Deserializer');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::InputFormatConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::InputFormatConfiguration object:

  $service_obj->Method(Att1 => { Deserializer => $value, ..., Deserializer => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::InputFormatConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Deserializer

=head1 DESCRIPTION

Specifies the deserializer you want to use to convert the format of the
input data.

=head1 ATTRIBUTES


=head2 Deserializer => L<Paws::Firehose::Deserializer>

  Specifies which deserializer to use. You can choose either the Apache
Hive JSON SerDe or the OpenX JSON SerDe. If both are non-null, the
server rejects the request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

