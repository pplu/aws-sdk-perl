package Paws::Robomaker::Source;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', request_name => 'architecture', traits => ['NameInRequest']);
  has Etag => (is => 'ro', isa => 'Str', request_name => 'etag', traits => ['NameInRequest']);
  has S3Bucket => (is => 'ro', isa => 'Str', request_name => 's3Bucket', traits => ['NameInRequest']);
  has S3Key => (is => 'ro', isa => 'Str', request_name => 's3Key', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::Source

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::Source object:

  $service_obj->Method(Att1 => { Architecture => $value, ..., S3Key => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::Source object:

  $result = $service_obj->Method(...);
  $result->Att1->Architecture

=head1 DESCRIPTION

Information about a source.

=head1 ATTRIBUTES


=head2 Architecture => Str

  The taget processor architecture for the application.


=head2 Etag => Str

  A hash of the object specified by C<s3Bucket> and C<s3Key>.


=head2 S3Bucket => Str

  The s3 bucket name.


=head2 S3Key => Str

  The s3 object key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

