
package Paws::WorkDocs::DeleteLabels;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has DeleteAll => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'deleteAll');
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'labels');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLabels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/resources/{ResourceId}/labels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::DeleteLabelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DeleteLabels - Arguments for method DeleteLabels on Paws::WorkDocs

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLabels on the 
Amazon WorkDocs service. Use the attributes of this class
as arguments to method DeleteLabels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLabels.

As an example:

  $service_obj->DeleteLabels(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. This field should not be set when
using administrative API actions, as in accessing the API using AWS
credentials.



=head2 DeleteAll => Bool

Flag to request removal of all labels from the specified resource.



=head2 Labels => ArrayRef[Str|Undef]

List of labels to delete from the resource.



=head2 B<REQUIRED> ResourceId => Str

The ID of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLabels in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

