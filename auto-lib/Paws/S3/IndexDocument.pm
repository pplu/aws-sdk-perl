package Paws::S3::IndexDocument;
  use Moose;
  has Suffix => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::IndexDocument

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::IndexDocument object:

  $service_obj->Method(Att1 => { Suffix => $value, ..., Suffix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::IndexDocument object:

  $result = $service_obj->Method(...);
  $result->Att1->Suffix

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> Suffix => Str

  A suffix that is appended to a request that is for a directory on the
website endpoint (e.g. if the suffix is index.html and you make a
request to samplebucket/images/ the data that is returned will be for
the object with the key name images/index.html) The suffix must not be
empty and must not include a slash character.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

