package Paws::MediaPackage::IngestEndpoint;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Password => (is => 'ro', isa => 'Str', request_name => 'password', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
  has Username => (is => 'ro', isa => 'Str', request_name => 'username', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::IngestEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::IngestEndpoint object:

  $service_obj->Method(Att1 => { Id => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::IngestEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

An endpoint for ingesting source content for a Channel.

=head1 ATTRIBUTES


=head2 Id => Str

  The system generated unique identifier for the IngestEndpoint


=head2 Password => Str

  The system generated password for ingest authentication.


=head2 Url => Str

  The ingest URL to which the source stream should be sent.


=head2 Username => Str

  The system generated username for ingest authentication.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

