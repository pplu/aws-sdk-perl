# Generated by default/object.tt
package Paws::CloudWatchEvents::CreateConnectionApiKeyAuthRequestParameters;
  use Moose;
  has ApiKeyName => (is => 'ro', isa => 'Str', required => 1);
  has ApiKeyValue => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreateConnectionApiKeyAuthRequestParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::CreateConnectionApiKeyAuthRequestParameters object:

  $service_obj->Method(Att1 => { ApiKeyName => $value, ..., ApiKeyValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::CreateConnectionApiKeyAuthRequestParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiKeyName

=head1 DESCRIPTION

Contains the API key authorization parameters for the connection.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiKeyName => Str

The name of the API key to use for authorization.


=head2 B<REQUIRED> ApiKeyValue => Str

The value for the API key to use for authorization.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

