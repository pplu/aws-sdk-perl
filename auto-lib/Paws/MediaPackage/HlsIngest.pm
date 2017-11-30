package Paws::MediaPackage::HlsIngest;
  use Moose;
  has IngestEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackage::IngestEndpoint]', request_name => 'ingestEndpoints', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::HlsIngest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::HlsIngest object:

  $service_obj->Method(Att1 => { IngestEndpoints => $value, ..., IngestEndpoints => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::HlsIngest object:

  $result = $service_obj->Method(...);
  $result->Att1->IngestEndpoints

=head1 DESCRIPTION

An HTTP Live Streaming (HLS) ingest resource configuration.

=head1 ATTRIBUTES


=head2 IngestEndpoints => ArrayRef[L<Paws::MediaPackage::IngestEndpoint>]

  A list of endpoints to which the source stream should be sent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

