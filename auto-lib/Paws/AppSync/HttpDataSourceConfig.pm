package Paws::AppSync::HttpDataSourceConfig;
  use Moose;
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

  $service_obj->Method(Att1 => { Endpoint => $value, ..., Endpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::HttpDataSourceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Endpoint

=head1 DESCRIPTION

Describes a Http data source configuration.

=head1 ATTRIBUTES


=head2 Endpoint => Str

  The Http url endpoint. You can either specify the domain name or ip and
port combination and the url scheme must be http(s). If the port is not
specified, AWS AppSync will use the default port 80 for http endpoint
and port 443 for https endpoints.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

