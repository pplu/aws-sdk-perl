# Generated by default/object.tt
package Paws::CloudWatchEvents::CreateConnectionOAuthClientRequestParameters;
  use Moose;
  has ClientID => (is => 'ro', isa => 'Str', required => 1);
  has ClientSecret => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreateConnectionOAuthClientRequestParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::CreateConnectionOAuthClientRequestParameters object:

  $service_obj->Method(Att1 => { ClientID => $value, ..., ClientSecret => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::CreateConnectionOAuthClientRequestParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientID

=head1 DESCRIPTION

Contains the Basic authorization parameters to use for the connection.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientID => Str

The client ID to use for OAuth authorization for the connection.


=head2 B<REQUIRED> ClientSecret => Str

The client secret associated with the client ID to use for OAuth
authorization for the connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

