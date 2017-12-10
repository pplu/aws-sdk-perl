package Paws::S3::RedirectAllRequestsTo;
  use Moose;
  has HostName => (is => 'ro', isa => 'Str', required => 1);
  has Protocol => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::RedirectAllRequestsTo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::RedirectAllRequestsTo object:

  $service_obj->Method(Att1 => { HostName => $value, ..., Protocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::RedirectAllRequestsTo object:

  $result = $service_obj->Method(...);
  $result->Att1->HostName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostName => Str

  Name of the host where requests will be redirected.


=head2 Protocol => Str

  Protocol to use (http, https) when redirecting requests. The default is
the protocol that is used in the original request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

