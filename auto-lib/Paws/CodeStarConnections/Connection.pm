package Paws::CodeStarConnections::Connection;
  use Moose;
  has ConnectionArn => (is => 'ro', isa => 'Str');
  has ConnectionName => (is => 'ro', isa => 'Str');
  has ConnectionStatus => (is => 'ro', isa => 'Str');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has ProviderType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::Connection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStarConnections::Connection object:

  $service_obj->Method(Att1 => { ConnectionArn => $value, ..., ProviderType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStarConnections::Connection object:

  $result = $service_obj->Method(...);
  $result->Att1->ConnectionArn

=head1 DESCRIPTION

The configuration that allows a service such as CodePipeline to connect
to a third-party code repository.

=head1 ATTRIBUTES


=head2 ConnectionArn => Str

  The Amazon Resource Name (ARN) of the connection. The ARN is used as
the connection reference when the connection is shared between AWS
services.

The ARN is never reused if the connection is deleted.


=head2 ConnectionName => Str

  The name of the connection. Connection names must be unique in an AWS
user account.


=head2 ConnectionStatus => Str

  The current status of the connection.


=head2 OwnerAccountId => Str

  The name of the external provider where your third-party code
repository is configured. For Bitbucket, this is the account ID of the
owner of the Bitbucket repository.


=head2 ProviderType => Str

  The name of the external provider where your third-party code
repository is configured. Currently, the valid provider type is
Bitbucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStarConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

