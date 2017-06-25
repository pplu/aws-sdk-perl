
package Paws::WorkDocs::GetCurrentUser;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCurrentUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/me');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::GetCurrentUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetCurrentUser - Arguments for method GetCurrentUser on Paws::WorkDocs

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCurrentUser on the 
Amazon WorkDocs service. Use the attributes of this class
as arguments to method GetCurrentUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCurrentUser.

As an example:

  $service_obj->GetCurrentUser(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthenticationToken => Str

Amazon WorkDocs authentication token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCurrentUser in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

