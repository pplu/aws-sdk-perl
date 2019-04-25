package Paws::CodeBuild::ProjectCache;
  use Moose;
  has Location => (is => 'ro', isa => 'Str', request_name => 'location', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ProjectCache

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ProjectCache object:

  $service_obj->Method(Att1 => { Location => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ProjectCache object:

  $result = $service_obj->Method(...);
  $result->Att1->Location

=head1 DESCRIPTION

Information about the cache for the build project.

=head1 ATTRIBUTES


=head2 Location => Str

  Information about the cache location:

=over

=item *

C<NO_CACHE>: This value is ignored.

=item *

C<S3>: This is the S3 bucket name/prefix.

=back



=head2 B<REQUIRED> Type => Str

  The type of cache used by the build project. Valid values include:

=over

=item *

C<NO_CACHE>: The build project does not use any cache.

=item *

C<S3>: The build project reads and writes from and to S3.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

