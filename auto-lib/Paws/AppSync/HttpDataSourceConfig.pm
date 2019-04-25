package Paws::AppSync::HttpDataSourceConfig;
  use Moose;
  has AuthorizationConfig => (is => 'ro', isa => 'Paws::AppSync::AuthorizationConfig', request_name => 'authorizationConfig', traits => ['NameInRequest']);
  has Endpoint => (is => 'ro', isa => 'Str', request_name => 'endpoint', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::HttpDataSourceConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::HttpDataSourceConfig object:

  $service_obj->Method(Att1 => { AuthorizationConfig => $value, ..., Endpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::HttpDataSourceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorizationConfig

=head1 DESCRIPTION

Describes an HTTP data source configuration.

=head1 ATTRIBUTES


=head2 AuthorizationConfig => L<Paws::AppSync::AuthorizationConfig>

  The authorization config in case the HTTP endpoint requires
authorization.


=head2 Endpoint => Str

  The HTTP URL endpoint. You can either specify the domain name or IP,
and port combination, and the URL scheme must be HTTP or HTTPS. If the
port is not specified, AWS AppSync uses the default port 80 for the
HTTP endpoint and port 443 for HTTPS endpoints.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

