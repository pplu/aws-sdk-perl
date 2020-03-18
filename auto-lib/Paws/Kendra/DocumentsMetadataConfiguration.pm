package Paws::Kendra::DocumentsMetadataConfiguration;
  use Moose;
  has S3Prefix => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DocumentsMetadataConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::DocumentsMetadataConfiguration object:

  $service_obj->Method(Att1 => { S3Prefix => $value, ..., S3Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::DocumentsMetadataConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Prefix

=head1 DESCRIPTION

Document metadata files that contain information such as the document
access control information, source URI, document author, and custom
attributes. Each metadata file contains metadata about a single
document.

=head1 ATTRIBUTES


=head2 S3Prefix => Str

  A prefix used to filter metadata configuration files in the AWS S3
bucket. The S3 bucket might contain multiple metadata files. Use
C<S3Prefix> to include only the desired metadata files.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

