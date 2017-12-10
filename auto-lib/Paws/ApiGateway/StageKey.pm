package Paws::ApiGateway::StageKey;
  use Moose;
  has RestApiId => (is => 'ro', isa => 'Str', request_name => 'restApiId', traits => ['NameInRequest']);
  has StageName => (is => 'ro', isa => 'Str', request_name => 'stageName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::StageKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::StageKey object:

  $service_obj->Method(Att1 => { RestApiId => $value, ..., StageName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::StageKey object:

  $result = $service_obj->Method(...);
  $result->Att1->RestApiId

=head1 DESCRIPTION

A reference to a unique stage identified in the format
C<{restApiId}/{stage}>.

=head1 ATTRIBUTES


=head2 RestApiId => Str

  The string identifier of the associated RestApi.


=head2 StageName => Str

  The stage name associated with the stage key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

