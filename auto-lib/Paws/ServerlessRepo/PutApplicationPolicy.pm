
package Paws::ServerlessRepo::PutApplicationPolicy;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has Statements => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::ApplicationPolicyStatement]', traits => ['NameInRequest'], request_name => 'statements');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutApplicationPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServerlessRepo::PutApplicationPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::PutApplicationPolicy - Arguments for method PutApplicationPolicy on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutApplicationPolicy on the 
L<AWSServerlessApplicationRepository|Paws::ServerlessRepo> service. Use the attributes of this class
as arguments to method PutApplicationPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutApplicationPolicy.

As an example:

  $service_obj->PutApplicationPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application to get.



=head2 Statements => ArrayRef[L<Paws::ServerlessRepo::ApplicationPolicyStatement>]

Array of policy statements applied to the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutApplicationPolicy in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

