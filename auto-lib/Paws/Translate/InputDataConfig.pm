package Paws::Translate::InputDataConfig;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', required => 1);
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::InputDataConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Translate::InputDataConfig object:

  $service_obj->Method(Att1 => { ContentType => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Translate::InputDataConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentType

=head1 DESCRIPTION

The input configuration properties for requesting a batch translation
job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContentType => Str

  The multipurpose internet mail extension (MIME) type of the input
files. Valid values are C<text/plain> for plaintext files and
C<text/html> for HTML files.


=head2 B<REQUIRED> S3Uri => Str

  The URI of the AWS S3 folder that contains the input file. The folder
must be in the same Region as the API endpoint you are calling.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

