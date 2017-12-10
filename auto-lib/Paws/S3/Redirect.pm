package Paws::S3::Redirect;
  use Moose;
  has HostName => (is => 'ro', isa => 'Str');
  has HttpRedirectCode => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str');
  has ReplaceKeyPrefixWith => (is => 'ro', isa => 'Str');
  has ReplaceKeyWith => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Redirect

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Redirect object:

  $service_obj->Method(Att1 => { HostName => $value, ..., ReplaceKeyWith => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Redirect object:

  $result = $service_obj->Method(...);
  $result->Att1->HostName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 HostName => Str

  The host name to use in the redirect request.


=head2 HttpRedirectCode => Str

  The HTTP redirect code to use on the response. Not required if one of
the siblings is present.


=head2 Protocol => Str

  Protocol to use (http, https) when redirecting requests. The default is
the protocol that is used in the original request.


=head2 ReplaceKeyPrefixWith => Str

  The object key prefix to use in the redirect request. For example, to
redirect requests for all pages with prefix docs/ (objects in the docs/
folder) to documents/, you can set a condition block with
KeyPrefixEquals set to docs/ and in the Redirect set
ReplaceKeyPrefixWith to /documents. Not required if one of the siblings
is present. Can be present only if ReplaceKeyWith is not provided.


=head2 ReplaceKeyWith => Str

  The specific object key to use in the redirect request. For example,
redirect request to error.html. Not required if one of the sibling is
present. Can be present only if ReplaceKeyPrefixWith is not provided.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

