
package Paws::SMS::GetServers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SMS::GetServersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetServers - Arguments for method GetServers on Paws::SMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServers on the 
AWS Server Migration Service service. Use the attributes of this class
as arguments to method GetServers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServers.

As an example:

  $service_obj->GetServers(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServers in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

