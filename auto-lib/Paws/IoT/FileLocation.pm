package Paws::IoT::FileLocation;
  use Moose;
  has S3Location => (is => 'ro', isa => 'Paws::IoT::S3Location', request_name => 's3Location', traits => ['NameInRequest']);
  has Stream => (is => 'ro', isa => 'Paws::IoT::Stream', request_name => 'stream', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::FileLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::FileLocation object:

  $service_obj->Method(Att1 => { S3Location => $value, ..., Stream => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::FileLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Location

=head1 DESCRIPTION

The location of the OTA update.

=head1 ATTRIBUTES


=head2 S3Location => L<Paws::IoT::S3Location>

  The location of the updated firmware in S3.


=head2 Stream => L<Paws::IoT::Stream>

  The stream that contains the OTA update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

