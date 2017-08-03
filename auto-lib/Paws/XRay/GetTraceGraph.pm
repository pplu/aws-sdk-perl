
package Paws::XRay::GetTraceGraph;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TraceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTraceGraph');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/TraceGraph');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::GetTraceGraphResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetTraceGraph - Arguments for method GetTraceGraph on Paws::XRay

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTraceGraph on the 
AWS X-Ray service. Use the attributes of this class
as arguments to method GetTraceGraph.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTraceGraph.

As an example:

  $service_obj->GetTraceGraph(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token. Not used.



=head2 B<REQUIRED> TraceIds => ArrayRef[Str|Undef]

Trace IDs of requests for which to generate a service graph.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTraceGraph in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

