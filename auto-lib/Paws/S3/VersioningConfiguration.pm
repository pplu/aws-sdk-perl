package Paws::S3::VersioningConfiguration;
  use Moose;
  has MFADelete => (is => 'ro', isa => 'Str', request_name => 'MfaDelete', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::VersioningConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::VersioningConfiguration object:

  $service_obj->Method(Att1 => { MFADelete => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::VersioningConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->MFADelete

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 MFADelete => Str

  Specifies whether MFA delete is enabled in the bucket versioning
configuration. This element is only returned if the bucket has been
configured with MFA delete. If the bucket has never been so configured,
this element is not returned.


=head2 Status => Str

  The versioning state of the bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

