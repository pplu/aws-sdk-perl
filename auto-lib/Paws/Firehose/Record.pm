package Paws::Firehose::Record;
  use Moose;
  has Data => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::Record

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::Record object:

  $service_obj->Method(Att1 => { Data => $value, ..., Data => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::Record object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

The unit of data in a delivery stream.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Data => Str

  The data blob, which is base64-encoded when the blob is serialized. The
maximum size of the data blob, before base64-encoding, is 1,000 KiB.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

