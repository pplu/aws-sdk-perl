
package Paws::Discovery::ListConfigurations;
  use Moose;
  has ConfigurationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationType' , required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::Filter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::ListConfigurationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ListConfigurations - Arguments for method ListConfigurations on Paws::Discovery

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConfigurations on the 
AWS Application Discovery Service service. Use the attributes of this class
as arguments to method ListConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConfigurations.

As an example:

  $service_obj->ListConfigurations(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationType => Str

A valid configuration identified by the Discovery Service.

Valid values are: C<"SERVER">, C<"PROCESS">, C<"CONNECTION">

=head2 Filters => ArrayRef[L<Paws::Discovery::Filter>]

You can filter the list using a key, value format. For example:

C<{"key": "serverType", "value": "webServer"}>



=head2 MaxResults => Int

The total number of items to return. The maximum value is 100.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConfigurations in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

